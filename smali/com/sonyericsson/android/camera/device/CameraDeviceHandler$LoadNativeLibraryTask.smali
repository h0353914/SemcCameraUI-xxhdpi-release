.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadNativeLibraryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadNativeLibraryTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .locals 0

    .line 640
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBypassCameraSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 641
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->loadNativeLibrary()V

    .line 643
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare()Z

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
