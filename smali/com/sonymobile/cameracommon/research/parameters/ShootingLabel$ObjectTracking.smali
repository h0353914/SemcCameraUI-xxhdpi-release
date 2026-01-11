.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;
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
    name = "ObjectTracking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

.field public static final enum OBJECT_TRACKING_AUTO_TARGET_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

.field public static final enum OBJECT_TRACKING_AUTO_TARGET_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

.field public static final enum OBJECT_TRACKING_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;
    .locals 3

    .line 528
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    filled-new-array {v0, v1, v2}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 529
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    const/4 v1, 0x0

    const-string v2, "OFF_OFF"

    const-string v3, "OBJECT_TRACKING_OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    .line 530
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    const/4 v1, 0x1

    const-string v2, "ON_OFF"

    const-string v3, "OBJECT_TRACKING_AUTO_TARGET_OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    .line 531
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    const/4 v1, 0x2

    const-string v2, "ON_ON"

    const-string v3, "OBJECT_TRACKING_AUTO_TARGET_ON"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    .line 528
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->$values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

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

    .line 536
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 537
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;
    .locals 1

    .line 528
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;
    .locals 1

    .line 528
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 547
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    return-object p0
.end method
