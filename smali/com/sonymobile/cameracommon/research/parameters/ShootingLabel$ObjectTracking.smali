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
.method static constructor <clinit>()V
    .locals 6

    .line 446
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    const-string v1, "OBJECT_TRACKING_OFF"

    const-string v2, "OFF_OFF"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    .line 447
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    const-string v1, "OBJECT_TRACKING_AUTO_TARGET_OFF"

    const-string v2, "ON_OFF"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    .line 448
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    const-string v1, "OBJECT_TRACKING_AUTO_TARGET_ON"

    const-string v2, "ON_ON"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    const/4 v0, 0x3

    .line 445
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    aput-object v1, v0, v5

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

    .line 453
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 454
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;
    .locals 1

    .line 445
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;
    .locals 1

    .line 445
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 464
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    return-object p0
.end method
