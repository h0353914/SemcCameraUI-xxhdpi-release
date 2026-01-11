.class public final enum Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;
.super Ljava/lang/Enum;
.source "Beauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;


# instance fields
.field private final mStringExpression:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;
    .locals 2

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    const/4 v1, 0x0

    const-string v2, "on"

    const-string v3, "ON"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    .line 36
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    const/4 v1, 0x1

    const-string v2, "off"

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    .line 34
    invoke-static {}, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;->$values()[Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;->mStringExpression:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;
    .locals 1

    .line 34
    const-class v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;
    .locals 1

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Beauty$Value;->mStringExpression:Ljava/lang/String;

    return-object p0
.end method
