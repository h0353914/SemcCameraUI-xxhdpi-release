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

    .line 1031
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1032
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1033
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1034
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .locals 0

    .line 1026
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1039
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadSettingsThread invoked  casuCapture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1040
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1041
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1039
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v0, v1, :cond_2

    .line 1047
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1048
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1049
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v1

    .line 1047
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1702(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 1051
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 1053
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;

    invoke-direct {v2, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1800(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1902(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    .line 1079
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1900(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->enable()V

    :cond_2
    return-void
.end method
