.class public Lcom/sonyericsson/android/camera/recorder/RecorderFactory;
.super Ljava/lang/Object;
.source "RecorderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;
    }
.end annotation


# static fields
.field private static MIN_VIDEO_DURATION_MILLIS:J = 0xbb8L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;IILcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;",
            "II",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;",
            ")",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController;"
        }
    .end annotation

    .line 78
    const-string v0, "intelligent_active"

    if-eqz p2, :cond_2

    .line 79
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmSlowMotion(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 103
    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v4

    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmProgressNotificationIntervalMillis(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v6

    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmVideoStabilizer(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmIsShutterSoundOn(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 103
    invoke-static/range {v1 .. v10}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->createDefaultRecorderWithBypassCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;IZZLcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->createSuperSlowShot(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v0

    return-object v0

    .line 81
    :cond_1
    invoke-static/range {p0 .. p6}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->createSuperSlow(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    move-result-object v0

    return-object v0

    .line 117
    :cond_2
    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v3

    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmProgressNotificationIntervalMillis(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v5

    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmVideoStabilizer(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmIsShutterSoundOn(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 117
    invoke-static/range {v1 .. v9}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->createDefaultRecorder(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;IZZLcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultRecorder(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;IZZLcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "Landroid/os/Handler;",
            "IZZ",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;",
            ")",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create recorder : CameraRecorderController progress-interval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " intelligent-active:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " shutter-sound:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;

    new-instance v8, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v2, v8

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;-><init>(IZLcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/content/Context;)V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, v8

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v10}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;IZZ)V

    return-object v0
.end method

.method private static createDefaultRecorderWithBypassCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;IZZLcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "Landroid/os/Handler;",
            "IZZ",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;",
            "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;",
            ")",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create recorder : DefaultRecorderControllerWithBypassCamera progress-interval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " intelligent-active:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p6

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " shutter-sound:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;

    new-instance v8, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    const/4 v3, 0x2

    move-object v2, v8

    move/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;-><init>(IZLcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Landroid/content/Context;)V

    sget-wide v9, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->MIN_VIDEO_DURATION_MILLIS:J

    const/4 v13, 0x1

    const/16 v16, 0x1

    const/4 v12, 0x1

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v8

    move-object/from16 v7, p3

    move-wide v8, v9

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v14, v16

    move/from16 v15, p7

    move/from16 v16, p6

    invoke-direct/range {v2 .. v16}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;IZZZZZ)V

    return-object v0
.end method

.method private static createSuperSlow(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;",
            "II)",
            "Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create recorder : SuperSlowRecorderController progress-interval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmProgressNotificationIntervalMillis(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shutter-sound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmIsShutterSoundOn(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmOnSuperSlowRecordingFinishedListener(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmProgressNotificationIntervalMillis(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v8

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmIsShutterSoundOn(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v9

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;Landroid/os/Handler;IZII)V

    return-object v0
.end method

.method private static createSuperSlowShot(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;",
            "II)",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create recorder : SuperSlowShotRecorderController progress-interval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmProgressNotificationIntervalMillis(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shutter-sound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmIsShutterSoundOn(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmOnSuperSlowRecordingFinishedListener(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmProgressNotificationIntervalMillis(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v8

    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->-$$Nest$fgetmIsShutterSoundOn(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v9

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;Landroid/os/Handler;IZII)V

    return-object v0
.end method
