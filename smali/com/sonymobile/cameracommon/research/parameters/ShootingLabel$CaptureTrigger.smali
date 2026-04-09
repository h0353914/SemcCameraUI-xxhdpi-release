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

.field public static final enum WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 282
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "CAMERA_KEY"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 283
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "CAPTURE_BUTTON"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 284
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "TOUCH_CAPTURE"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 285
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "VOLUME_KEY"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 286
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "FAST_CAPTURING_LAUNCH"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 287
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "SMILE_CAPTURE"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 288
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "SELF_TIMER"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 289
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "WEARABLE"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 290
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "GESTURE"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 291
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "SIDE_SENSE"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 292
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "TOUCH_CAPTURE_PREDICTIVE_LAUNCH"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 293
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->TOUCH_CAPTURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 294
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "OTHER"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const/16 v0, 0xc

    .line 281
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->TOUCH_CAPTURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v14

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

    .line 299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 300
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;
    .locals 1

    .line 281
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;
    .locals 1

    .line 281
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 310
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    return-object p0
.end method
