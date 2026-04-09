.class public Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableUtil;
.super Ljava/lang/Object;
.source "WearableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGooglePlayServiceAvailable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, -0x1

    .line 33
    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableUtil;->isGooglePlayServiceAvailable(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isGooglePlayServiceAvailable(Landroid/content/Context;I)Z
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_0

    .line 22
    sget p0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
