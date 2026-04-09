.class public Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "DeviceStatus.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final KEY:Ljava/lang/String; = "device_status"

.field private static REQUIRED_PROVIDER_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "device_status"

    return-object p0
.end method

.method public minRequiredVersion()I
    .locals 0

    .line 66
    sget p0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;->REQUIRED_PROVIDER_VERSION:I

    return p0
.end method
