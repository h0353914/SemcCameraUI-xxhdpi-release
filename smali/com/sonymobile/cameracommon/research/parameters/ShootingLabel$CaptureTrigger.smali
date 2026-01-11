.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;
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
    name = "CaptureTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum GESTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum OTHER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum TOUCH_CAPTURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;
    .locals 11

    .line 336
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v5, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v6, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v7, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v8, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v9, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->TOUCH_CAPTURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v10, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    filled-new-array/range {v0 .. v10}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 337
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAMERA_KEY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 338
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAPTURE_BUTTON"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 339
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOUCH_CAPTURE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 340
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VOLUME_KEY"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 341
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAST_CAPTURING_LAUNCH"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 342
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMILE_CAPTURE"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 343
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELF_TIMER"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 344
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GESTURE"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 345
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIDE_SENSE"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 346
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 347
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOUCH_CAPTURE_PREDICTIVE_LAUNCH"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->TOUCH_CAPTURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 348
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTHER"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 336
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->$values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

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

    .line 353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 354
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;
    .locals 1

    .line 336
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;
    .locals 1

    .line 336
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 364
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    return-object p0
.end method
