.class public Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;
.super Ljava/lang/Object;
.source "PlatformCapabilityList.java"


# static fields
.field private static final KEY_SENSOR_CAMERA_LIFT_TRIGGER:Ljava/lang/String; = "sensor_camera_lift_trigger"

.field private static final KEY_SIDE_SENSE:Ljava/lang/String; = "somc_side_sense"

.field private static final KEY_WEARABLE:Ljava/lang/String; = "somc_wearable"

.field private static final SENSOR_CAMERA_LIFT_TRIGGER:Ljava/lang/String; = "com.sonymobile.sensor.camera_lift_trigger"

.field private static final TAG:Ljava/lang/String; = "PlatformCapabilityList"

.field private static final WEARABLE_BRIDGE_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.cameracommon.wearablebridge"


# instance fields
.field public final CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final WEARABLE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "loadPlatformCapabilityFromDevice"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 58
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v1, "sensor_camera_lift_trigger"

    .line 59
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isLiftTriggerSupported(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v1, "somc_side_sense"

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isSideSenseSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v1, "somc_wearable"

    .line 63
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->isWearableSupported(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->WEARABLE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->createList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->mValues:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "loadPlatformCapabilityFromSharedPreferences"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 50
    :cond_0
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v0, "sensor_camera_lift_trigger"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 51
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v0, "somc_side_sense"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 52
    new-instance p1, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;

    const-string v0, "somc_wearable"

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/android/camera/util/capability/BooleanCapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->WEARABLE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 53
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->createList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->mValues:Ljava/util/List;

    return-void
.end method

.method private createList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "*>;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->CAMERA_LIFT_TRIGGER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->SIDE_SENSE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->WEARABLE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private isLiftTriggerSupported(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "sensor"

    .line 91
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 p1, -0x1

    .line 92
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Sensor;

    .line 95
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sonymobile.sensor.camera_lift_trigger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isSideSenseSupported()Z
    .locals 5

    .line 108
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 109
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    const/high16 v4, 0x20000000

    .line 110
    invoke-virtual {v3, v4}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isWearableSupported(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "com.sonymobile.cameracommon.wearablebridge"

    .line 118
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/SignatureUtil;->isAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public values()Ljava/util/List;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
            "*>;>;"
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapabilityList;->mValues:Ljava/util/List;

    return-object p0
.end method
