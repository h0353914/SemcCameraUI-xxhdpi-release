.class public Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;
.super Lcom/sonyericsson/cameracommon/status/CameraIdArrayValue;
.source "BuiltInCameraIds.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final KEY:Ljava/lang/String; = "built_in_camera_ids"

.field private static REQUIRED_PROVIDER_VERSION:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;->DEFAULT_VALUE:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method public varargs constructor <init>([Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/CameraIdArrayValue;-><init>([Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 40
    const-string p0, "built_in_camera_ids"

    return-object p0
.end method

.method public minRequiredVersion()I
    .locals 0

    .line 45
    sget p0, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;->REQUIRED_PROVIDER_VERSION:I

    return p0
.end method
