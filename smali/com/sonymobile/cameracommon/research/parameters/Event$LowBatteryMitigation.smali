.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;
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
    name = "LowBatteryMitigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

.field public static final enum FAIL_TO_START:Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

.field public static final enum FORCE_QUIT:Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;
    .locals 2

    .line 72
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->FAIL_TO_START:Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->FORCE_QUIT:Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    filled-new-array {v0, v1}, [Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    const-string v1, "FAIL_TO_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->FAIL_TO_START:Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    .line 74
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    const-string v1, "FORCE_QUIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->FORCE_QUIT:Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    .line 72
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->$values()[Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;
    .locals 0

    if-eqz p0, :cond_0

    .line 78
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->FAIL_TO_START:Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->FORCE_QUIT:Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;
    .locals 1

    .line 72
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;
    .locals 1

    .line 72
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    return-object v0
.end method
