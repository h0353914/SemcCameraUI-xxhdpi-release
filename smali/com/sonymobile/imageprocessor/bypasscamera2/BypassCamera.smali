.class public final Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.super Ljava/lang/Object;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStopVideoRecordingTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartVideoRecordingTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareVideoRecordingTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotFreeTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;
    }
.end annotation


# static fields
.field private static final CALLBACK_TYPE_ON_FINISH_BURST_DONE:I = 0x32

.field private static final CALLBACK_TYPE_ON_PREPARE_BURST_DONE:I = 0x28

.field private static final CALLBACK_TYPE_ON_PREPARE_SUPER_SLOW_RECORDING_DONE:I = 0x4

.field private static final CALLBACK_TYPE_ON_PREPARE_VIDEO_RECORDING_DONE:I = 0x2

.field private static final CALLBACK_TYPE_ON_SHUTTER_DONE:I = 0x14

.field private static final CALLBACK_TYPE_ON_SNAPSHOT_DONE:I = 0x15

.field private static final CALLBACK_TYPE_ON_SNAPSHOT_FREE_DONE:I = 0x1e

.field private static final CALLBACK_TYPE_ON_SNAPSHOT_READY_DONE:I = 0xa

.field private static final CALLBACK_TYPE_ON_START_SUPER_SLOW_RECORDING_DONE:I = 0x3

.field private static final CALLBACK_TYPE_ON_START_VIDEO_RECORDING_DONE:I = 0x0

.field private static final CALLBACK_TYPE_ON_STOP_VIDEO_RECORDING_DONE:I = 0x1

.field private static final INVALID_NATIVE_INSTANCE_POINTER:I = -0x1

.field private static final RET_ERR:I = -0x1

.field private static final RET_OK:I = 0x0

.field private static final RET_TIMEOUT:I = -0x2

.field private static final TAG:Ljava/lang/String; = "BypassCamera"

.field private static final sBypassCameraLock:Ljava/lang/Object;

.field private static sIsBypassCameraLoaded:Z = false

.field private static sIsBypassCameraOpened:Z = false


# instance fields
.field private mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

.field private mNativeInstancePointer:J

.field private mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

.field private mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

.field private mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

.field private mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

.field private mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

.field private mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

.field private mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

.field private mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

.field private mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)V
    .locals 4

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 130
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    const/4 v2, 0x0

    .line 138
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    .line 139
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 142
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    .line 143
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    .line 144
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    .line 145
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    .line 146
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    .line 149
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

    .line 150
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    .line 151
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    .line 154
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    .line 156
    iput-object v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    .line 176
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BypassCamera"

    const-string v3, "CONSTRUCTOR : E"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->access$000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeInitialize(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 181
    iget-wide v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    .line 182
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to nativeInitialize()."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "BypassCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeInstanceHead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "BypassCamera"

    const-string p1, "CONSTRUCTOR : X"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Landroid/os/Handler;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)V

    .line 163
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)V

    .line 171
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    return-object p0
.end method

.method private final callbackFromNative(IIIZZZIII)V
    .locals 10

    move-object v8, p0

    move v0, p1

    move v1, p2

    .line 1222
    invoke-direct {v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BypassCamera"

    const-string v3, "callbackFromNative() : E"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    const/16 v2, 0x28

    if-eq v0, v2, :cond_5

    const/16 v2, 0x32

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1242
    :pswitch_0
    invoke-direct {v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BypassCamera"

    const-string v2, "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_DONE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_1
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;

    invoke-direct {v0, v8, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;I)V

    invoke-direct {v8, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1237
    :pswitch_1
    invoke-direct {v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BypassCamera"

    const-string v2, "TYPE = CALLBACK_TYPE_ON_SHUTTER_DONE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_2
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;

    move v2, p3

    move v3, p4

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;IIZ)V

    invoke-direct {v8, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1257
    :cond_3
    invoke-direct {v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_FINISH_BURST_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_4
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;

    invoke-direct {v0, v8, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {v8, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1252
    :cond_5
    invoke-direct {v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_PREPARE_BURST_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_6
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;

    move v2, p5

    invoke-direct {v0, v8, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Z)V

    invoke-direct {v8, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1247
    :cond_7
    invoke-direct {v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_FREE_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_8
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotFreeTask;

    invoke-direct {v0, v8, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotFreeTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {v8, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_9
    move v3, p4

    move v2, p5

    .line 1226
    invoke-direct {v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "BypassCamera"

    const-string v1, "TYPE = CALLBACK_TYPE_ON_SNAPSHOT_READY_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_a
    new-instance v9, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;

    move-object v0, v9

    move-object v1, v8

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;ZZZIII)V

    invoke-direct {v8, v9}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1266
    :goto_0
    invoke-direct {v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "BypassCamera"

    const-string v1, "callbackFromNative() : X"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final callbackFromNativeVideo(I)V
    .locals 2

    .line 1438
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BypassCamera"

    const-string v1, "callbackFromNativeVideo() : E"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1457
    :pswitch_0
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1458
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_PREPARE_SUPER_SLOW_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1463
    :pswitch_1
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1464
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_START_SUPER_SLOW_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1442
    :pswitch_2
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareVideoRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareVideoRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1443
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_PREPARE_VIDEO_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1452
    :pswitch_3
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStopVideoRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStopVideoRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1453
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_STOP_VIDEO_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1447
    :pswitch_4
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartVideoRecordingTask;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartVideoRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->callbackToClient(Ljava/lang/Runnable;)V

    .line 1448
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "BypassCamera"

    const-string v0, "TYPE = CALLBACK_TYPE_ON_START_VIDEO_RECORDING_DONE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "BypassCamera"

    const-string p1, "callbackFromNativeVideo() : X"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private callbackToClient(Ljava/lang/Runnable;)V
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string p0, "BypassCamera"

    const-string p1, "callbackToClient() : Callback object is not installed."

    .line 1272
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1274
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1275
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1276
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string p0, "BypassCamera"

    const-string p1, "callbackToClient() : Callback is not invoked."

    .line 1278
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static createListValue(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1099
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1103
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 1104
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    .line 1105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1107
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1109
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createSuperSlowSupportedInfoListValue(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1076
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1079
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1080
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1081
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;

    .line 1082
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v1, :cond_1

    const/16 v4, 0x2c

    .line 1084
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1086
    :cond_1
    iget v4, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->width:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    .line 1087
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1088
    iget v4, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->height:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    .line 1089
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1090
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 1091
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    iget v2, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->fps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1094
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1055
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1058
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1059
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;

    const/4 v3, 0x0

    .line 1060
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    .line 1061
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1063
    :cond_1
    iget v3, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    .line 1064
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1065
    iget v3, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 1066
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1067
    iget v2, v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;->fps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1069
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCaps(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;
    .locals 4

    .line 1002
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->loadNativeLibrary()V

    .line 1004
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;

    invoke-direct {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;-><init>()V

    .line 1005
    invoke-static {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->access$000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)I

    move-result p0

    invoke-static {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeGetCaps(ILcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 1007
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeGetCaps()."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1010
    :cond_0
    new-instance p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;-><init>()V

    const-string v1, "vs-values"

    .line 1013
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mVideoStabilizationMode:Ljava/util/List;

    .line 1014
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1013
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video-high-frame-rate-configuration"

    .line 1017
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mHighFrameRateSupportedInfoList:Ljava/util/List;

    .line 1018
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1017
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vs-steady-shot-configuration"

    .line 1021
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSteadyShotSupportedInfoList:Ljava/util/List;

    .line 1022
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vs-intelligent-active-configuration"

    .line 1025
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mIntelligentActiveSupportedInfoList:Ljava/util/List;

    .line 1026
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSupportedInfoListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "super-slow-values"

    .line 1029
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowMode:Ljava/util/List;

    .line 1030
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1029
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "burst-values"

    .line 1033
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mBurstMode:Ljava/util/List;

    .line 1034
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video-hdr-values"

    .line 1037
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mVideoHdrMode:Ljava/util/List;

    .line 1038
    invoke-static {v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1037
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video-super-slow-configuration"

    .line 1041
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowSupportedInfoList:Ljava/util/List;

    iget-object v3, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowFrameNumList:Ljava/util/List;

    .line 1042
    invoke-static {v2, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createSuperSlowSupportedInfoListValue(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "climax-recognition-values"

    .line 1047
    iget-object v0, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mClimaxRecognitionMode:Ljava/util/List;

    .line 1048
    invoke-static {v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->createListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static loadNativeLibrary()V
    .locals 6

    .line 194
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    sget-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraLoaded:Z

    if-nez v1, :cond_4

    .line 196
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    const-string v3, "TraceLog"

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CamKPI] [UPTIME=] [BypassCamera]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] : loadLibrary() : E"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, "imageprocessorjni"

    .line 200
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v1, "TraceLog"

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CamKPI] [UPTIME=] [BypassCamera]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] : loadLibrary() : X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3
    sput-boolean v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraLoaded:Z

    .line 206
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native nativeChangeToPhotoMode(JIIIIII)I
.end method

.method private native nativeChangeToSuperSlowMode(JIIIIIIII)I
.end method

.method private native nativeChangeToVideoMode(JIIIIII)I
.end method

.method private native nativeFinalize(J)I
.end method

.method private static native nativeGetCaps(ILcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;)I
.end method

.method private native nativeGetLatestRequestId(J)I
.end method

.method private native nativeInitialize(I)J
.end method

.method private native nativeIsDebugable()Z
.end method

.method private native nativeRequestFinishBurstShot(J)I
.end method

.method private native nativeRequestPrepareBurstShot(J)I
.end method

.method private native nativeRequestPrepareSnapshot(JLandroid/view/Surface;I)I
.end method

.method private native nativeRequestPrepareSuperSlowRecording(JLandroid/view/Surface;III)I
.end method

.method private native nativeRequestPrepareVideoRecording(JLandroid/view/Surface;III)I
.end method

.method private native nativeRequestSnapshot(JZZDDDZLjava/lang/String;ZIZIZIIIIZI)I
.end method

.method private native nativeRequestSnapshotFree(J)I
.end method

.method private native nativeRequestSnapshotReady(J)I
.end method

.method private native nativeRequestStartSuperSlowRecording(J)I
.end method

.method private native nativeRequestStartVideoRecording(J)I
.end method

.method private native nativeRequestStopVideoRecording(J)I
.end method

.method private native nativeSetConfig(JLcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)I
.end method

.method public static open(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Landroid/os/Handler;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .locals 2

    .line 217
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->loadNativeLibrary()V

    .line 219
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    sget-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Landroid/os/Handler;)V

    const/4 p0, 0x1

    .line 222
    sput-boolean p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    .line 223
    monitor-exit v0

    return-object v1

    .line 225
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BypassCamera is already opened."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static open(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .locals 2

    .line 238
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->loadNativeLibrary()V

    .line 240
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    sget-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;Ljava/util/concurrent/ExecutorService;)V

    const/4 p0, 0x1

    .line 243
    sput-boolean p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    .line 244
    monitor-exit v0

    return-object v1

    .line 246
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BypassCamera is already opened."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public changeToPhotoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;Landroid/util/Size;Landroid/util/Size;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;
        }
    .end annotation

    .line 362
    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 364
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->access$100(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;)I

    move-result v3

    .line 365
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 366
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 367
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 368
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object v0, p0

    move v8, p4

    .line 362
    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeChangeToPhotoMode(JIIIIII)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    const-wide/16 p2, -0x1

    .line 372
    iput-wide p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 373
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to change mode to : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 375
    :pswitch_1
    new-instance p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Timed out to change mode to : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public changeToSuperSlowMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;Landroid/util/Size;Landroid/util/Size;ILcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;
        }
    .end annotation

    move-object v11, p0

    move-object v12, p1

    move-object/from16 v0, p5

    .line 446
    iget-wide v1, v11, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 448
    invoke-static {v12}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->access$300(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;)I

    move-result v3

    .line 449
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 450
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v7

    iget v9, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->fps:I

    iget v10, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->frameNum:I

    move-object v0, v11

    move/from16 v8, p4

    .line 446
    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeChangeToSuperSlowMode(JIIIIIIII)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-wide/16 v0, -0x1

    .line 458
    iput-wide v0, v11, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 459
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to change mode to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :pswitch_1
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out to change mode to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public changeToSuperSlowMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;Landroid/util/Size;Landroid/util/Size;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;)V
    .locals 0

    .line 428
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public changeToVideoMode(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;Landroid/util/Size;Landroid/util/Size;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;
        }
    .end annotation

    .line 395
    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 397
    invoke-static {p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->access$200(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;)I

    move-result v3

    .line 398
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 399
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 400
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 401
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object v0, p0

    move v8, p4

    .line 395
    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeChangeToVideoMode(JIIIIII)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    const-wide/16 p2, -0x1

    .line 405
    iput-wide p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 406
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to change mode to : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 408
    :pswitch_1
    new-instance p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Timed out to change mode to : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraTimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 4

    .line 318
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BypassCamera"

    const-string v1, "close() : E"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    .line 323
    :try_start_0
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    .line 324
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    .line 325
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    .line 326
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    .line 327
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    .line 328
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    .line 329
    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    .line 330
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeFinalize(J)I

    .line 335
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BypassCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeInstanceHead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v0, -0x1

    .line 337
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 340
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sBypassCameraLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 341
    :try_start_1
    sput-boolean v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->sIsBypassCameraOpened:Z

    .line 342
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeIsDebugable()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "BypassCamera"

    const-string v0, "close() : X"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 342
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    .line 330
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public requestFinishBurstShot()V
    .locals 2

    .line 978
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestFinishBurstShot(J)I

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 980
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 981
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeRequestFinishBurstShot()."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public requestPrepareBurstShot()V
    .locals 2

    .line 956
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestPrepareBurstShot(J)I

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 958
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 959
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeRequestPrepareBurstShot()."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public requestPrepareSnapshot(Landroid/view/Surface;I)V
    .locals 2

    .line 480
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestPrepareSnapshot(JLandroid/view/Surface;I)I

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, -0x1

    .line 485
    iput-wide p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 486
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to requestPrepareSnapshot()."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public requestPrepareSuperSlowRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V
    .locals 7

    .line 906
    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    iget-object v0, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v4, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorStandard:I

    iget-object v0, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v5, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorTransfer:I

    iget-object p2, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v6, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorRange:I

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestPrepareSuperSlowRecording(JLandroid/view/Surface;III)I

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, -0x1

    .line 913
    iput-wide p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 914
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to nativeRequestPrepareSuperSlowRecording()."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public requestPrepareVideoRecording(Landroid/view/Surface;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;)V
    .locals 7

    .line 759
    iget-wide v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    iget-object v0, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v4, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorStandard:I

    iget-object v0, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v5, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorTransfer:I

    iget-object p2, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    iget v6, p2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorRange:I

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestPrepareVideoRecording(JLandroid/view/Surface;III)I

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, -0x1

    .line 766
    iput-wide p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 767
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to nativeRequestPrepareVideoRecording()."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public requestSnapshot(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;)I
    .locals 33

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    .line 530
    iget-wide v1, v15, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    iget-boolean v3, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->isValid:Z

    iget-object v4, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-boolean v4, v4, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->isExifGpsEnabled:Z

    iget-object v5, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-wide v5, v5, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsLatitude:D

    iget-object v7, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-wide v7, v7, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsLongitude:D

    iget-object v9, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-wide v9, v9, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsAltitude:D

    iget-object v11, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-boolean v11, v11, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->isExifGpsProcMethodEnabled:Z

    iget-object v12, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-object v12, v12, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsProcMethod:Ljava/lang/String;

    iget-object v13, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget-boolean v13, v13, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->isExifGpsTimestampEnabled:Z

    iget-object v14, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    iget v14, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsTimestamp:I

    move/from16 v24, v14

    iget-object v14, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifOrientationInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    iget-boolean v14, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;->isExifOrientationEnabled:Z

    move/from16 v25, v14

    iget-object v14, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifOrientationInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    iget v14, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;->exifOrientation:I

    move/from16 v26, v14

    iget-object v14, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifThumbnailInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    iget-boolean v14, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->isExifThumbEnabled:Z

    move/from16 v27, v14

    iget-object v14, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifThumbnailInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    iget v14, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->exifThumbWidth:I

    move/from16 v28, v14

    iget-object v14, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifThumbnailInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    iget v14, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->exifThumbHeight:I

    move/from16 v29, v14

    iget-object v14, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifThumbnailInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    iget v14, v14, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->exifThumbQuality:I

    move/from16 v30, v14

    iget v14, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->quality:I

    move/from16 v31, v14

    iget-boolean v14, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->isQualityAutoControlEnabled:Z

    iget v0, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->captureNum:I

    move/from16 v23, v0

    move-object v0, v15

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v27

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v30

    move/from16 v22, v31

    move/from16 v25, v14

    move/from16 v14, v24

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v25

    invoke-direct/range {v0 .. v23}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestSnapshot(JZZDDDZLjava/lang/String;ZIZIZIIIIZI)I

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to nativeRequestSnapshot()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object/from16 v0, p0

    .line 554
    iget-wide v1, v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeGetLatestRequestId(J)I

    move-result v0

    return v0
.end method

.method public requestSnapshotFree()V
    .locals 2

    .line 735
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestSnapshotFree(J)I

    move-result p0

    if-eqz p0, :cond_0

    .line 737
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeRequestSnapshotFree()."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public requestSnapshotReady()V
    .locals 2

    .line 496
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestSnapshotReady(J)I

    move-result p0

    if-eqz p0, :cond_0

    .line 498
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeRequestSnapshotReady()."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public requestStartSuperSlowRecording()V
    .locals 2

    .line 933
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestStartSuperSlowRecording(J)I

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 936
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 937
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeRequestStartSuperSlowRecording()."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public requestStartVideoRecording()V
    .locals 2

    .line 785
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestStartVideoRecording(J)I

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 787
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 788
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeRequestStartVideoRecording()."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public requestStopVideoRecording()V
    .locals 2

    .line 806
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeRequestStopVideoRecording(J)I

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 808
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 809
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to nativeRequestStopVideoRecording()."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public setBurstCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    .line 277
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    return-void
.end method

.method public setConfig(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V
    .locals 2

    .line 1119
    iget-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->nativeSetConfig(JLcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)I

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    .line 1123
    iput-wide v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mNativeInstancePointer:J

    .line 1124
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to nativeSetConfig()."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public setPhotoCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotReadyCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    .line 263
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    .line 264
    iput-object p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotFreeCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotFreeCallback;

    return-void
.end method

.method public setSuperSlowCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    .line 306
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartSuperSlowRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    return-void
.end method

.method public setVideoCallbacks(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareVideoRecordingCallback;

    .line 292
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStartVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;

    .line 293
    iput-object p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mStopVideoRecordingCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StopVideoRecordingCallback;

    return-void
.end method
