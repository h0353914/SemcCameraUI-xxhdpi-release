.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/Event$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StopOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum SIDE_SENSE_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .locals 4

    .line 92
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->SIDE_SENSE_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 93
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v1, "USER_STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 94
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v1, "THERMAL_STOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 95
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v1, "LOWBATTERY_STOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 96
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v1, "SIDE_SENSE_STOP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->SIDE_SENSE_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 92
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->$values()[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getType(ZZ)Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .locals 0

    if-eqz p0, :cond_0

    .line 101
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 103
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0

    .line 105
    :cond_1
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .locals 1

    .line 92
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .locals 1

    .line 92
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object v0
.end method
