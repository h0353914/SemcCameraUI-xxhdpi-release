.class public Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "VideoNoiseReduction.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

.field public static final KEY:Ljava/lang/String; = "video_noise_reduction"

.field private static REQUIRED_PROVIDER_VERSION:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "video_noise_reduction"

    return-object p0
.end method

.method public minRequiredVersion()I
    .locals 0

    .line 58
    sget p0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->REQUIRED_PROVIDER_VERSION:I

    return p0
.end method
