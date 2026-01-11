.class public final enum Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;
.super Ljava/lang/Enum;
.source "ArtFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

.field public static final enum MULTI:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

.field public static final enum SINGLE:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;


# instance fields
.field private final mStringExpression:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;
    .locals 3

    .line 29
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->SINGLE:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->MULTI:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    const/4 v1, 0x0

    const-string/jumbo v2, "single"

    const-string v3, "SINGLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->SINGLE:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    .line 31
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    const/4 v1, 0x1

    const-string v2, "multi"

    const-string v3, "MULTI"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->MULTI:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    const/4 v1, 0x2

    const-string v2, "off"

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    .line 29
    invoke-static {}, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->$values()[Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->mStringExpression:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;
    .locals 1

    .line 29
    const-class v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;
    .locals 1

    .line 29
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;->mStringExpression:Ljava/lang/String;

    return-object p0
.end method
