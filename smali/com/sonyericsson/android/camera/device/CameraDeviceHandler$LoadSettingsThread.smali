.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;
.super Ljava/lang/Thread;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSettingsThread"
.end annotation


# instance fields
.field private final mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private final mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)V
    .locals 0

    .line 1493
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1494
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1495
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1496
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1501
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoadSettingsThread invoked  casuCapture:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmFastCaptureSetting(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1503
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1501
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmFastCaptureSetting(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v0, v1, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1510
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1511
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v1

    .line 1509
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmGeotagManager(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)V

    .line 1513
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmGeotagManager(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 1515
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;

    invoke-direct {v2, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mrunOnCameraDeviceThread(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 1540
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation-IA;)V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmFastCaptureOrientation(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)V

    .line 1541
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmFastCaptureOrientation(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->enable()V

    :cond_2
    return-void
.end method
