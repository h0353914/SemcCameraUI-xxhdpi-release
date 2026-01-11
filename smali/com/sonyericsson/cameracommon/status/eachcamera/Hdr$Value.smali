.class public final enum Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;
.super Ljava/lang/Enum;
.source "Hdr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;


# instance fields
.field private final mStringExpression:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;
    .locals 2

    .line 52
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    const/4 v1, 0x0

    const-string v2, "on"

    const-string v3, "ON"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    const/4 v1, 0x1

    const-string v2, "off"

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    .line 52
    invoke-static {}, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->$values()[Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

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

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->mStringExpression:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;
    .locals 1

    .line 52
    const-class v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;
    .locals 1

    .line 52
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Hdr$Value;->mStringExpression:Ljava/lang/String;

    return-object p0
.end method
