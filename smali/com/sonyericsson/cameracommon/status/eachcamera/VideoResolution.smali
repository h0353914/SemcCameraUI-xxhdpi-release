.class public Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;
.super Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;
.source "VideoResolution.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:Landroid/graphics/Rect;

.field public static final KEY:Ljava/lang/String; = "video_resolution"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 28
    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;-><init>(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 46
    const-string/jumbo p0, "video_resolution"

    return-object p0
.end method

.method public minRequiredVersion()I
    .locals 0

    .line 51
    sget p0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;->REQUIRED_PROVIDER_VERSION:I

    return p0
.end method
