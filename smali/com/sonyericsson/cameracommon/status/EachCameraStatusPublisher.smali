.class public Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;
.super Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
.source "EachCameraStatusPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final mKeyPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->getCameraCommonVersion()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceIdApi1()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->mKeyPrefix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->mKeyPrefix:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method protected keyPrefix()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->mKeyPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher<",
            "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 103
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 104
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 105
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 106
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 107
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 108
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 109
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 110
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 111
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 112
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 113
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 114
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 115
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 116
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 117
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 118
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 119
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 120
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 121
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 122
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    return-object p0
.end method

.method public putFromParameter(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Z)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;
    .locals 2

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 83
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxPreviewFps(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result p2

    invoke-direct {v0, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    :cond_0
    if-nez p3, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getPictureSize()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    new-instance p2, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;

    invoke-direct {p2, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    :cond_1
    return-object p0
.end method
