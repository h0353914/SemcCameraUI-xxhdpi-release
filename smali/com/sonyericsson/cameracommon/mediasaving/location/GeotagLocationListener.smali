.class public Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;
.super Ljava/lang/Object;
.source "GeotagLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "GeotagLocationListener"


# instance fields
.field private final mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mIsDisabled:Z

.field private mLastLocation:Landroid/location/Location;

.field public final mProvider:Ljava/lang/String;

.field private mValid:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 46
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    .line 47
    new-instance p1, Landroid/location/Location;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 4

    .line 104
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    if-eqz v0, :cond_1

    .line 105
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current: Lat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    .line 106
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Lon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    .line 107
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Alt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    .line 108
    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    return-object p0

    .line 111
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    const-string v0, "current: no location obtained."

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public isDisabled()Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    return p0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 57
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLocationChanged: Lat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Lon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Alt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 64
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .line 91
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderDisabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .line 80
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 118
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    return-void
.end method
