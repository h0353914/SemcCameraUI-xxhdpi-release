.class public Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;
.super Lcom/sonyericsson/cameracommon/status/IntegerValue;
.source "VideoRecordingFps.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "video_recording_fps"

.field private static REQUIRED_PROVIDER_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/IntegerValue;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "video_recording_fps"

    return-object p0
.end method

.method public minRequiredVersion()I
    .locals 0

    .line 43
    sget p0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;->REQUIRED_PROVIDER_VERSION:I

    return p0
.end method
