.class public Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "Hdr.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

.field public static final KEY:Ljava/lang/String; = "hdr"

.field private static REQUIRED_PROVIDER_VERSION:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    return-void
.end method

.method public static fromCameraParameter(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p0, v0, :cond_0

    .line 28
    sget-object p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "hdr"

    return-object p0
.end method

.method public minRequiredVersion()I
    .locals 0

    .line 66
    sget p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;->REQUIRED_PROVIDER_VERSION:I

    return p0
.end method
