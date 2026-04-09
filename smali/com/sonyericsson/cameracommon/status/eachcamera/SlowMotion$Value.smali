.class public final enum Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;
.super Ljava/lang/Enum;
.source "SlowMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;


# instance fields
.field private final mStringExpression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    const-string v1, "ON"

    const-string v2, "on"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    .line 31
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    const-string v1, "OFF"

    const-string v2, "off"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->mStringExpression:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;
    .locals 1

    .line 29
    const-class v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;
    .locals 1

    .line 29
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/SlowMotion$Value;->mStringExpression:Ljava/lang/String;

    return-object p0
.end method
