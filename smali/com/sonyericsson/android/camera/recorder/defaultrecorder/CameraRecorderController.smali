.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;
.super Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.source "CameraRecorderController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraRecorderController"

.field private static final TRACE:Z = true


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;IZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderInterface;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "Landroid/os/Handler;",
            "IZZ)V"
        }
    .end annotation

    .line 73
    invoke-static/range {p7 .. p7}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->minVideoLengthMillis(Z)J

    move-result-wide v6

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v8, p6

    move/from16 v12, p8

    .line 68
    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JIZZZZ)V

    .line 80
    const-string v0, "CameraRecorderController() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->trace(Ljava/lang/String;)V

    .line 82
    const-string v0, "CameraRecorderController() X"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 1

    .line 34
    const-string v0, "CameraRecorderController"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .locals 1

    .line 87
    const-string v0, "prepareInternal() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->trace(Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 91
    const-string p0, "prepareInternal() X failed"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_0
    const-string p0, "prepareInternal() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public stopAudioRecording()V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object p0

    .line 133
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopAudioRecording()V

    return-void
.end method
