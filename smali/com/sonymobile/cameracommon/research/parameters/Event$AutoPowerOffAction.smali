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
.method static constructor <clinit>()V
    .locals 6

    .line 275
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    .line 276
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v1, "ON_LOCKSCREEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->ON_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    .line 277
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v1, "LIFT_TRIGGER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    .line 278
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const-string v1, "LIFT_TRIGGER_DIALOG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER_DIALOG:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const/4 v0, 0x4

    .line 274
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->ON_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER_DIALOG:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    aput-object v1, v0, v5

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

    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;
    .locals 1

    .line 274
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;
    .locals 1

    .line 274
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    return-object v0
.end method
