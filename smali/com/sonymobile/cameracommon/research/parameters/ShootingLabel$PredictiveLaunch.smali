.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;
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
    name = "PredictiveLaunch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

.field public static final enum False:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

.field public static final enum True:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;
    .locals 2

    .line 574
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->True:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->False:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    filled-new-array {v0, v1}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 575
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    const-string v1, "True"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->True:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    .line 576
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    const-string v1, "False"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->False:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    .line 574
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->$values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

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

    .line 581
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 582
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;
    .locals 1

    .line 574
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;
    .locals 1

    .line 574
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 592
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;->False:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveLaunch;

    return-object p0
.end method
