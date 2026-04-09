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
.method static constructor <clinit>()V
    .locals 7

    .line 341
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "LONG"

    const-string v2, "LONG"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->LONG:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 342
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "SHORT"

    const-string v2, "SHORT"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->SHORT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 343
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "INSTANT"

    const-string v2, "INSTANT"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->INSTANT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 344
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "OFF"

    const-string v2, "OFF"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const/4 v0, 0x4

    .line 340
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->LONG:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->SHORT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->INSTANT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    aput-object v1, v0, v6

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

    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 350
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;
    .locals 1

    .line 340
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;
    .locals 1

    .line 340
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 360
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    return-object p0
.end method
