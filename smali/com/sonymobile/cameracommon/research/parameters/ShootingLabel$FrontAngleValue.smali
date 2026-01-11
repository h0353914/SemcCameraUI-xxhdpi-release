.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;
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
    name = "FrontAngleValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

.field public static final enum CROPPED:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

.field public static final enum DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

.field public static final enum INVALID:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;
    .locals 3

    .line 551
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->CROPPED:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->INVALID:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    filled-new-array {v0, v1, v2}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 552
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    .line 553
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    const-string v1, "CROPPED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->CROPPED:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    .line 554
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    const-string v1, "INVALID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->INVALID:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    .line 551
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->$values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

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

    .line 559
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 560
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;
    .locals 1

    .line 551
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;
    .locals 1

    .line 551
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 570
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;->DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontAngleValue;

    return-object p0
.end method
