.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$BokehMode;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BokehMode"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 524
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 526
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getDefaultLogicalMultiCameraMode(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 529
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method
