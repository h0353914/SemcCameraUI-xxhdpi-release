.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;
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
    name = "FrontFlash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum NIGHT_PORTRAIT_FLASH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;


# instance fields
.field private mConvertedChar:C

.field private mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;
    .locals 7

    .line 395
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    sget-object v5, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    sget-object v6, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->NIGHT_PORTRAIT_FLASH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    filled-new-array/range {v0 .. v6}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 396
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 397
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "ON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 398
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "RED_EYE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 399
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "OFF"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 400
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "LED_ON"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 401
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "LED_OFF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 402
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "NIGHT_PORTRAIT_FLASH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->NIGHT_PORTRAIT_FLASH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 395
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->$values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

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

    .line 408
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 409
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;
    .locals 1

    .line 395
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;
    .locals 1

    .line 395
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 419
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    return-object p0
.end method
