.class public Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
.super Ljava/lang/Object;
.source "GeotagManager.java"


# static fields
.field private static final REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "GeotagManager"


# instance fields
.field private mAcquiring:Z

.field private final mContext:Landroid/content/Context;

.field private mIsGeotagPermissionGranted:Z

.field private mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

.field private mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

.field private mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 391
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isLocationServiceAvailable(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result p0

    return p0
.end method

.method private checkLocationService(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 5

    .line 337
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLocationService(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 341
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 342
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 344
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    if-ne p1, p0, :cond_1

    .line 345
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isLocationServiceAvailable(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 347
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z
    .locals 5

    .line 76
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGeoTagEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 78
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    if-ne p0, v0, :cond_2

    const-string p0, "gps"

    .line 81
    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const-string v0, "network"

    .line 83
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static isGeoTagEnabled(Lcom/sonyericsson/android/camera/setting/UserSettings;Landroid/content/Context;)Z
    .locals 1

    .line 71
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 72
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static isLocationServiceAvailable(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->readLocationSettings()V

    .line 446
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isGpsLocationAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isNetworkLocationAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public assignResource()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-string v1, "gps"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-string v1, "network"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    :cond_2
    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 227
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v2, :cond_1

    .line 228
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method public initGeotag(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z
    .locals 7

    .line 365
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "start initGeotag()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 369
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 370
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 372
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Geotag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 375
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    .line 376
    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    .line 377
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_2

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locationpermission="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    .line 380
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->checkLocationService(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result p0

    goto :goto_0

    .line 383
    :cond_3
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    move p0, v3

    .line 386
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4

    new-array p1, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end initGeotag():"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method public isAcquiring()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    return p0
.end method

.method public isDisabled()Z
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->isDisabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 458
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v2, :cond_1

    .line 459
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->isDisabled()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isGeotagPermissionGranted()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsGeotagPermissionGranted:Z

    return p0
.end method

.method public isGpsAcquired()Z
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 279
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 283
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLcsAvailable(Gps): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public isNetworkAcquired()Z
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 294
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 298
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLcsAvailable(NW): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public notifyStatus()V
    .locals 4

    .line 245
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyStatus: listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v0, :cond_1

    .line 251
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onDisabled()V

    :cond_1
    return-void

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGpsAcquired()Z

    move-result v0

    .line 257
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isNetworkAcquired()Z

    move-result v1

    if-nez v0, :cond_5

    if-eqz v1, :cond_3

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v0, :cond_7

    .line 266
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    const-string v0, "notifyStatus: onLost."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 267
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onLost()V

    goto :goto_1

    .line 260
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_7

    .line 261
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_6

    const-string v2, "notifyStatus: onAcquired."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 262
    :cond_6
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onAcquired(ZZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 138
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 139
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    return-void
.end method

.method public releaseResource()V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->stopReceivingLocationUpdates()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public setGeotag(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z
    .locals 5

    .line 409
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setGeotag(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 412
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 414
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    if-ne p1, v0, :cond_1

    .line 416
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    const/16 p3, 0xd

    .line 431
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    .line 432
    invoke-virtual {p2, p3, v2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    .line 439
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->checkLocationService(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result p0

    return p0
.end method

.method public setIsGeotagPermissionGranted(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsGeotagPermissionGranted:Z

    return-void
.end method

.method public setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    return-void
.end method

.method public declared-synchronized startLocationUpdates(ZZ)V
    .locals 9

    monitor-enter p0

    .line 162
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLocationUpdates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz p1, :cond_3

    .line 166
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-wide/32 v5, 0xea60

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 171
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 173
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 174
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    const-string p1, "startLocationUpdates(GPS) started."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_2
    if-eqz p2, :cond_5

    .line 177
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    const-wide/32 v5, 0xea60

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 181
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 183
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 184
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_5

    const-string p1, "startLocationUpdates(NW) started."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 190
    :goto_3
    :try_start_2
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_4

    const-string p2, "provider does not exist."

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :cond_4
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    goto :goto_5

    :goto_4
    const-string p2, "provider can\'t access."

    .line 187
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 161
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopReceivingLocationUpdates()V
    .locals 4

    monitor-enter p0

    .line 199
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopReceivingLocationUpdates: acquiring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 209
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 210
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "stopReceivingLocationUpdates: stopped."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 198
    monitor-exit p0

    throw v0
.end method

.method public updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 311
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->stopReceivingLocationUpdates()V

    .line 313
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    if-ne p1, v0, :cond_1

    .line 315
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onLost()V

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v0, "gps"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v1, "network"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 325
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->startLocationUpdates(ZZ)V

    :cond_1
    return-void
.end method
