.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SelfTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

.field public static final enum INSTANT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

.field public static final enum LONG:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

.field public static final enum OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

.field public static final enum SHORT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;
    .locals 4

    .line 423
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->LONG:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->SHORT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->INSTANT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 424
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "LONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->LONG:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 425
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "SHORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->SHORT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 426
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "INSTANT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->INSTANT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 427
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "OFF"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 423
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->$values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

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

    .line 432
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 433
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;
    .locals 1

    .line 423
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;
    .locals 1

    .line 423
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 443
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    return-object p0
.end method
