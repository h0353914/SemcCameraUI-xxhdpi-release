.class public Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "Metadata.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

.field public static final KEY:Ljava/lang/String; = "metadata"

.field private static REQUIRED_PROVIDER_VERSION:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "metadata"

    return-object p0
.end method

.method public minRequiredVersion()I
    .locals 0

    .line 59
    sget p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;->REQUIRED_PROVIDER_VERSION:I

    return p0
.end method
