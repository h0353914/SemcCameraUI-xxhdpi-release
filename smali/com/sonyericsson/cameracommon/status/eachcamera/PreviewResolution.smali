.class public Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;
.super Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;
.source "PreviewResolution.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:Landroid/graphics/Rect;

.field public static final KEY:Ljava/lang/String; = "preview_resolution"

.field private static REQUIRED_PROVIDER_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;-><init>(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "preview_resolution"

    return-object p0
.end method

.method public minRequiredVersion()I
    .locals 0

    .line 45
    sget p0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->REQUIRED_PROVIDER_VERSION:I

    return p0
.end method
