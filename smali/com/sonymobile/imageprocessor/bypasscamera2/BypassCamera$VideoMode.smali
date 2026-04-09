.class public final enum Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;
.super Ljava/lang/Enum;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

.field public static final enum HDR:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

.field public static final enum HDR_STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

.field public static final enum INTELLIGENTACTIVE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

.field public static final enum NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

.field public static final enum STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;


# instance fields
.field private final mModeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 50
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    .line 51
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const-string v1, "STEADYSHOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    .line 52
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const-string v1, "INTELLIGENTACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->INTELLIGENTACTIVE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    .line 53
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const-string v1, "HDR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->HDR:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    .line 54
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const-string v1, "HDR_STEADYSHOT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->HDR_STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const/4 v0, 0x5

    .line 49
    new-array v0, v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->INTELLIGENTACTIVE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->HDR:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->HDR_STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->mModeCode:I

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->getModeCode()I

    move-result p0

    return p0
.end method

.method private getModeCode()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->mModeCode:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;
    .locals 1

    .line 49
    const-class v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;
    .locals 1

    .line 49
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    invoke-virtual {v0}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    return-object v0
.end method
