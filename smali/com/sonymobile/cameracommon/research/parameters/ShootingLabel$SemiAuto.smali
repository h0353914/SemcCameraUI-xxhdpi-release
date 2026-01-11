.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SemiAuto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

.field public static final enum OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

.field public static final enum ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;
    .locals 2

    .line 447
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    filled-new-array {v0, v1}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 448
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    .line 449
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    const-string v1, "OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    .line 447
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->$values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 454
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 455
    iput p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;
    .locals 1

    .line 447
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;
    .locals 1

    .line 447
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 0

    .line 460
    iget p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->mValue:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 465
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    return-object p0
.end method
