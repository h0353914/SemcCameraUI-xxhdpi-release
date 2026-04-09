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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .locals 10
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
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;",
            "II)",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-static {p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$000(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 106
    invoke-static {p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$100(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v4

    .line 108
    invoke-static {p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v6

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 110
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$300(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 112
    invoke-static {p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    .line 102
    invoke-static/range {v1 .. v9}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->createDefault(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;ILandroid/os/Handler;ZZ)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v0

    return-object v0

    .line 89
    :pswitch_0
    invoke-static/range {p0 .. p7}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->createSuperSlowShot(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_1
    invoke-static/range {p0 .. p7}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->createSuperSlow(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createDefault(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;ILandroid/os/Handler;ZZ)Lcom/sonyericsson/android/camera/recorder/RecorderController;
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
            "I",
            "Landroid/os/Handler;",
            "ZZ)",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController;"
        }
    .end annotation

    move/from16 v15, p7

    const/4 v0, 0x1

    .line 192
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create recorder : DefaultRecorderController progress-interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intelligent-active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " shutter-sound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p8

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 199
    new-instance v16, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;

    new-instance v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    const/4 v0, 0x2

    invoke-direct {v4, v0, v15}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;-><init>(IZ)V

    sget-wide v6, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->MIN_VIDEO_DURATION_MILLIS:J

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v15}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;ILandroid/os/Handler;ZZZZZ)V

    return-object v16
.end method

.method private static createSuperSlow(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
    .locals 15
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
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;",
            "II)",
            "Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 129
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create recorder : SuperSlowRecorderController progress-interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " shutter-sound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 129
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    .line 136
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$100(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v7

    .line 137
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$500(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    move-result-object v8

    .line 139
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v10

    .line 141
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v12

    move-object v3, v0

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-direct/range {v3 .. v14}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;Landroid/os/Handler;ILandroid/os/Handler;ZII)V

    return-object v0
.end method

.method private static createSuperSlowShot(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .locals 15
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
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;",
            "II)",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 159
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create recorder : SuperSlowShotRecorderController progress-interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " shutter-sound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 159
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    .line 166
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$100(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v7

    .line 167
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$500(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    move-result-object v8

    .line 169
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v10

    .line 171
    invoke-static/range {p5 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v12

    move-object v3, v0

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-direct/range {v3 .. v14}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;Landroid/os/Handler;ILandroid/os/Handler;ZII)V

    return-object v0
.end method
