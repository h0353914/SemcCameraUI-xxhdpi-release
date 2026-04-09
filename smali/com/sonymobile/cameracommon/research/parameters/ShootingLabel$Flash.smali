.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;
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
    name = "Flash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 315
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "AUTO"

    const-string v2, "AUTO"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 316
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "ON"

    const-string v2, "ON"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 317
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "RED_EYE"

    const-string v2, "RED_EYE"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 318
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "OFF"

    const-string v2, "OFF"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 319
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "LED_ON"

    const-string v2, "LED_ON"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 320
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "LED_OFF"

    const-string v2, "LED_OFF"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const/4 v0, 0x6

    .line 314
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

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

    .line 325
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 326
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;
    .locals 1

    .line 314
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;
    .locals 1

    .line 314
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 336
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    return-object p0
.end method
