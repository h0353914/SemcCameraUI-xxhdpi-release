.class public Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;
.super Ljava/lang/Object;
.source "LocationSettingsReader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LocationSettingsReader"


# instance fields
.field mIsGpsLocationAllowed:Z

.field mIsNetworkLocationAllowed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "location"

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 41
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setIsGpsLocationAllowed(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsGpsLocationAllowed:Z

    return-void
.end method

.method private setIsNetworkLocationAllowed(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsNetworkLocationAllowed:Z

    return-void
.end method


# virtual methods
.method public getIsGpsLocationAllowed()Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsGpsLocationAllowed:Z

    return p0
.end method

.method public getIsNetworkLocationAllowed()Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsNetworkLocationAllowed:Z

    return p0
.end method

.method public readLocationSettings(Landroid/content/Context;)V
    .locals 1

    const-string v0, "gps"

    .line 26
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 25
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->setIsGpsLocationAllowed(Z)V

    const-string v0, "network"

    .line 28
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->setIsNetworkLocationAllowed(Z)V

    return-void
.end method
