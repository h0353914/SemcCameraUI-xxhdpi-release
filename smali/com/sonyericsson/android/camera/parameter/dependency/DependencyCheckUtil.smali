.class public Lcom/sonyericsson/android/camera/parameter/dependency/DependencyCheckUtil;
.super Ljava/lang/Object;
.source "DependencyCheckUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFaceDetectionAvailable(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 2
    .param p0    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    .line 63
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_3

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 68
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p2, p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isFusionAvailableOnStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)Z
    .locals 1
    .param p0    # Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFusionSupportedWith(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result p0

    return p0
.end method

.method public static isFusionAvailableOnVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 1
    .param p0    # Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 116
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFusionSupportedWith(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p0

    return p0
.end method

.method public static isIntelligentActiveAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 1
    .param p0    # Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 42
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActiveSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p0

    return p0
.end method
