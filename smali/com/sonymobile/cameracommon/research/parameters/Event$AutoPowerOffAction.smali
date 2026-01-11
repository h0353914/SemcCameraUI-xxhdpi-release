.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;
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
    name = "AutoPowerOffAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

.field public static final enum DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

.field public static final enum LIFT_TRIGGER:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

.field public static final enum LIFT_TRIGGER_DIALOG:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

.field public static final enum ON_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;
    .locals 4

    .line 304
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->ON_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER_DIALOG:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 305
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    .line 306
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v1, "ON_LOCKSCREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->ON_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    .line 307
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v1, "LIFT_TRIGGER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    .line 308
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v1, "LIFT_TRIGGER_DIALOG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER_DIALOG:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    .line 304
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->$values()[Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;
    .locals 1

    .line 304
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;
    .locals 1

    .line 304
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    return-object v0
.end method
