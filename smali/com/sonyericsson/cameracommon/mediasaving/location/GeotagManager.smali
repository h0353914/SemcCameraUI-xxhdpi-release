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

.field private final mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    .line 103
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->readLocationSettings(Landroid/content/Context;)V

    return-void
.end method

.method private checkLocationService(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z
    .locals 2

    .line 347
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkLocationService(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 351
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 353
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    if-ne p2, v0, :cond_1

    .line 354
    invoke-direct {p0, p3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isLocationServiceAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 356
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private isDisabled()Z
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->isDisabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 450
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz p0, :cond_1

    .line 451
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

.method public static isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z
    .locals 2

    .line 78
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isGeoTagEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 80
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    if-ne p0, v0, :cond_2

    .line 83
    const-string p0, "gps"

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .line 85
    const-string v0, "network"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isGeoTagEnabled(Lcom/sonyericsson/android/camera/setting/UserSettings;Landroid/content/Context;)Z
    .locals 1

    .line 73
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 74
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isGpsLocationAllowed()Z
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->getIsGpsLocationAllowed()Z

    move-result p0

    return p0
.end method

.method private isLocationServiceAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->readLocationSettings(Landroid/content/Context;)V

    .line 430
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGpsLocationAllowed()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isNetworkLocationAllowed()Z

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

.method private isNetworkLocationAllowed()Z
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->getIsNetworkLocationAllowed()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized stopReceivingLocationUpdates()V
    .locals 5

    const-string/jumbo v0, "stopReceivingLocationUpdates: acquiring: "

    monitor-enter p0

    .line 207
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 217
    :cond_1
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 218
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "stopReceivingLocationUpdates: stopped."

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public assignResource()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-string v1, "gps"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-string v1, "network"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    :cond_2
    return-void
.end method

.method public canSetGeotag(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/app/Activity;I)Z
    .locals 2

    .line 411
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setGeotag(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 414
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    if-ne p2, v0, :cond_1

    const/16 v0, 0xd

    .line 416
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {p3, p4, v0, v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->checkAndRequestSelfPermissions(Landroid/app/Activity;II[Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    return p0

    .line 424
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->checkLocationService(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 235
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz p0, :cond_1

    .line 236
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

.method public initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z
    .locals 4

    .line 375
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "start initGeotag()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 377
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 379
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Geotag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 382
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    .line 383
    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    .line 384
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location permission="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    if-eqz v1, :cond_3

    .line 387
    invoke-direct {p0, p2, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->checkLocationService(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    goto :goto_0

    .line 390
    :cond_3
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 393
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "end initGeotag():"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    const/4 p0, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isAcquiring()Z
    .locals 0

    .line 160
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    return p0
.end method

.method public isGeotagPermissionGranted()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsGeotagPermissionGranted:Z

    return p0
.end method

.method public isGpsAcquired()Z
    .locals 2

    .line 286
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz p0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 291
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkLcsAvailable(Gps): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public isNetworkAcquired()Z
    .locals 2

    .line 301
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz p0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 306
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkLcsAvailable(NW): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public notifyStatus()V
    .locals 3

    .line 253
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyStatus: listener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 258
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz p0, :cond_1

    .line 259
    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onDisabled()V

    :cond_1
    return-void

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGpsAcquired()Z

    move-result v0

    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isNetworkAcquired()Z

    move-result v1

    if-nez v0, :cond_5

    if-eqz v1, :cond_3

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v0, :cond_7

    .line 274
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    const-string v0, "notifyStatus: onLost."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 275
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onLost()V

    goto :goto_1

    .line 268
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_7

    .line 269
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_6

    const-string v2, "notifyStatus: onAcquired."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 270
    :cond_6
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onAcquired(ZZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public readLocationSettings(Landroid/content/Context;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->readLocationSettings(Landroid/content/Context;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 146
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 147
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    return-void
.end method

.method public releaseResource()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->stopReceivingLocationUpdates()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public setIsGeotagPermissionGranted(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsGeotagPermissionGranted:Z

    return-void
.end method

.method public setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    return-void
.end method

.method public declared-synchronized startLocationUpdates(ZZ)V
    .locals 10

    const-string/jumbo v0, "startLocationUpdates: "

    monitor-enter p0

    .line 170
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz p1, :cond_3

    .line 174
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v5, "gps"

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-wide/32 v6, 0xea60

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 179
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 181
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 182
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    new-array p1, v3, [Ljava/lang/String;

    const-string/jumbo v0, "startLocationUpdates(GPS) started."

    aput-object v0, p1, v2

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

    .line 185
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v5, "network"

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-wide/32 v6, 0xea60

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 189
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 191
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 192
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_5

    new-array p1, v3, [Ljava/lang/String;

    const-string/jumbo p2, "startLocationUpdates(NW) started."

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 198
    :goto_3
    :try_start_2
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_4

    const-string p2, "provider does not exist."

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :cond_4
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    goto :goto_5

    .line 195
    :goto_4
    const-string p2, "provider can\'t access."

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 319
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->stopReceivingLocationUpdates()V

    .line 321
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    if-ne p1, v0, :cond_1

    .line 323
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz p1, :cond_0

    .line 324
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onLost()V

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v0, "gps"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v1, "network"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 333
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->startLocationUpdates(ZZ)V

    :cond_1
    return-void
.end method
