.class public Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;
.super Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;
.source "PlatformDependencyResolver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PlatformDependencyResolver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;-><init>()V

    return-void
.end method

.method public static checkAspectRatio(Landroid/graphics/Rect;II)Z
    .locals 2

    .line 204
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    int-to-float p0, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide v0, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDefaultFocusModeForFastCapturePhoto(Lcom/sonyericsson/android/camera/device/CameraParameters;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;
    .locals 2

    .line 107
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFocusModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    const-string v0, "continuous-picture"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 114
    :cond_0
    const-string v0, "auto"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultVideoSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 7

    .line 62
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedVideoConfiguration(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 71
    iget v4, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    const/16 v5, 0x780

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    iget v4, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    const/16 v5, 0x438

    if-ne v4, v5, :cond_1

    move v0, v6

    .line 75
    :cond_1
    iget v4, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    const/16 v5, 0x500

    if-ne v4, v5, :cond_2

    iget v4, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_2

    move v1, v6

    .line 79
    :cond_2
    iget v4, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    const/16 v5, 0x280

    if-ne v4, v5, :cond_0

    iget v3, v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    const/16 v4, 0x1e0

    if-ne v3, v4, :cond_0

    move v2, v6

    goto :goto_0

    :cond_3
    move v1, v0

    move v2, v1

    :cond_4
    if-eqz v0, :cond_5

    .line 88
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    :cond_5
    if-eqz v1, :cond_6

    .line 91
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    :cond_6
    if-eqz v2, :cond_7

    .line 94
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMaxPictureWidth(Landroid/content/Context;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionDependence;->isDependOnAspect(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz p0, :cond_1

    .line 43
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 46
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    move v1, v3

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 50
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getOptimalPreviewSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 136
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "E: Base rect("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 139
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedPreviewSizes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 142
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_2

    .line 144
    :cond_1
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "preferredPreviewSize is invalid. Get preferredPreviewSize from videoSize: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 149
    :cond_2
    invoke-static {p2, p0, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 152
    :cond_3
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForStill(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_4

    .line 154
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getPreferredPreviewSizeForVideo(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p1

    .line 156
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-nez p0, :cond_6

    .line 157
    :cond_5
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 159
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "preferredPreviewSize is invalid. Get preferredPreviewSize from captureSize: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 162
    :cond_6
    invoke-static {p2, p1, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getOptimalStillPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferredPreviewSizeFromCaptureSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    const/4 v0, 0x0

    .line 215
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;

    move-result-object p0

    .line 216
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {v1, v0, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static getSurfaceSize(Landroid/graphics/Rect;Z)Landroid/util/Size;
    .locals 5

    const/16 v0, 0x15

    const/16 v1, 0x9

    .line 175
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result v0

    const/16 v2, 0x2d0

    if-eqz v0, :cond_0

    .line 176
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x690

    invoke-direct {p0, p1, v2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    const/16 v0, 0x12

    .line 177
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result v0

    const/16 v3, 0x5a0

    if-eqz v0, :cond_1

    .line 178
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v3, v2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_1
    const/16 v0, 0x10

    .line 179
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result v0

    const/16 v4, 0x438

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 181
    const-string p0, "getSurfaceSize: video HDR enable, return 1080"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 182
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x780

    invoke-direct {p0, p1, v4}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 185
    :cond_2
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x500

    invoke-direct {p0, p1, v2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_3
    const/4 p1, 0x4

    const/4 v0, 0x3

    .line 187
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 188
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_4
    const/16 p1, 0xb

    .line 189
    invoke-static {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 190
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0xb0

    const/16 v0, 0x90

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_5
    const/4 p1, 0x1

    .line 191
    invoke-static {p0, p1, p1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 192
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v2, v2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 194
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The specified preview size is not supported. ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getVideoPreviewSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 228
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo16To9(Landroid/graphics/Rect;)Z

    move-result v0

    const/16 v1, 0x780

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 229
    new-instance p0, Landroid/graphics/Rect;

    const/16 v0, 0x438

    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 231
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo21To9(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    new-instance p0, Landroid/graphics/Rect;

    const/16 v0, 0x338

    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    return-object p0
.end method
