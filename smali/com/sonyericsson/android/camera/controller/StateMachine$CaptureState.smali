.class public final enum Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_CROPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_FRONT_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_LOGICAL_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_MULTI_FRAME_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_PREPARE_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_RESTART_PREVIEW_SESSION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_STOPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_WAITING_PRE_PROCESS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

.field public static final enum STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;


# instance fields
.field private final mCanApplicationBeFinished:Z

.field private final mCanHandleAsynchronizedTask:Z

.field private final mIsMenuAvailable:Z

.field private final mIsRecordingState:Z


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .locals 40

    .line 710
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FRONT_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v8, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESTART_PREVIEW_SESSION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v9, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v10, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PREPARE_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v11, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v12, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v13, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v14, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v15, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v16, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v17, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v18, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v19, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MULTI_FRAME_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v20, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v21, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v22, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v23, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v24, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v25, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v26, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v27, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v28, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STOPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v29, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v30, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v31, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v32, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v33, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v34, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v35, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOGICAL_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v36, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_PRE_PROCESS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v37, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v38, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CROPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    sget-object v39, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    filled-new-array/range {v0 .. v39}, [Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mcanApplicationBeFinished(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canApplicationBeFinished()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcanHandleAsynchronizedTask(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->canHandleAsynchronizedTask()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMenuAvailable(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isMenuAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRecording(Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->isRecording()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 711
    new-instance v7, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "STATE_NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v7, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 713
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v9, "STATE_INITIALIZE"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 715
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v7, 0x0

    const-string v2, "STATE_RESUME"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 717
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_RESUME_AND_CAPTURE"

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 719
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_CAMERA_SWITCHING"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 721
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_FRONT_CAMERA_SWITCHING"

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FRONT_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 723
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_PHOTO_BASE"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 725
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v13, 0x1

    const-string v9, "STATE_PHOTO_READY"

    const/4 v10, 0x7

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 727
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_RESTART_PREVIEW_SESSION"

    const/16 v3, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESTART_PREVIEW_SESSION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 729
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v13, 0x0

    const-string v9, "STATE_PHOTO_READY_FOR_RECORDING"

    const/16 v10, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 731
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_PREPARE_FOR_RECORDING"

    const/16 v3, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PREPARE_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 733
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_CAPTURE_COUNTDOWN"

    const/16 v10, 0xb

    const/4 v11, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 735
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v6, 0x1

    const-string v2, "STATE_OPERATION_RESTRICTED"

    const/16 v3, 0xc

    const/4 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_OPERATION_RESTRICTED:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 737
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START"

    const/16 v10, 0xd

    const/4 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 739
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v6, 0x0

    const-string v2, "STATE_PHOTO_AF_SEARCH"

    const/16 v3, 0xe

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 741
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_PHOTO_AF_DONE"

    const/16 v10, 0xf

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 743
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE"

    const/16 v3, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 745
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE"

    const/16 v10, 0x11

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 747
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_PHOTO_CAPTURE"

    const/16 v3, 0x12

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 749
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_MULTI_FRAME_CAPTURE"

    const/16 v10, 0x13

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MULTI_FRAME_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 751
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_BURST_CAPTURE"

    const/16 v3, 0x14

    const/4 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 753
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v14, 0x1

    const-string v9, "STATE_VIDEO_RECORDING"

    const/16 v10, 0x15

    const/4 v11, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 755
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v7, 0x1

    const-string v2, "STATE_VIDEO_CAPTURE_WHILE_RECORDING"

    const/16 v3, 0x16

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 757
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v14, 0x0

    const-string v9, "STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING"

    const/16 v10, 0x17

    const/4 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 759
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_VIDEO_STORE"

    const/16 v3, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 761
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v14, 0x1

    const-string v9, "STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION"

    const/16 v10, 0x19

    const/4 v11, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 763
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION"

    const/16 v3, 0x1a

    const/4 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 765
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE"

    const/16 v10, 0x1b

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 767
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_VIDEO_STOPPING"

    const/16 v3, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_STOPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 769
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v14, 0x0

    const-string v9, "STATE_PAUSE"

    const/16 v10, 0x1d

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 771
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v2, "STATE_WARNING"

    const/16 v3, 0x1e

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 773
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_FINALIZE"

    const/16 v10, 0x1f

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 775
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "STATE_VIDEO_RECORDING_PAUSING"

    const/16 v3, 0x20

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 777
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v13, 0x1

    const-string v9, "STATE_VIDEO_READY"

    const/16 v10, 0x21

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 779
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v7, 0x0

    const-string v2, "STATE_MODE_CHANGING"

    const/16 v3, 0x22

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 781
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v13, 0x0

    const-string v9, "STATE_LOGICAL_MODE_CHANGING"

    const/16 v10, 0x23

    const/4 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_LOGICAL_MODE_CHANGING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 783
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_WAITING_PRE_PROCESS_DONE"

    const/16 v3, 0x24

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_PRE_PROCESS_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 785
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE"

    const/16 v10, 0x25

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 787
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v2, "STATE_CROPPING"

    const/16 v3, 0x26

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_CROPPING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 789
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const-string v9, "STATE_FATAL"

    const/16 v10, 0x27

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_FATAL:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    .line 710
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->$values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ)V"
        }
    .end annotation

    .line 814
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 815
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    .line 816
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    .line 817
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsMenuAvailable:Z

    .line 818
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsRecordingState:Z

    return-void
.end method

.method private canApplicationBeFinished()Z
    .locals 0

    .line 826
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    return p0
.end method

.method private canHandleAsynchronizedTask()Z
    .locals 0

    .line 822
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    return p0
.end method

.method private isMenuAvailable()Z
    .locals 0

    .line 830
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsMenuAvailable:Z

    return p0
.end method

.method private isRecording()Z
    .locals 0

    .line 834
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->mIsRecordingState:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .locals 1

    .line 710
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;
    .locals 1

    .line 710
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-object v0
.end method
