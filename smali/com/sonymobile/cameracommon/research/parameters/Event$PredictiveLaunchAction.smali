.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/Event$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PredictiveLaunchAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

.field public static final enum HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

.field public static final enum OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

.field public static final enum SIDE_SENSING:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

.field public static final enum TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

.field public static final enum VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;
    .locals 5

    .line 293
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->SIDE_SENSING:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 294
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v1, "TOUCH_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    .line 295
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v1, "HW_CAMERA_KEY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    .line 296
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v1, "VOLUME_KEY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    .line 297
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v1, "SIDE_SENSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->SIDE_SENSING:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    .line 298
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v1, "OTHER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    .line 293
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->$values()[Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;
    .locals 1

    .line 293
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;
    .locals 1

    .line 293
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    return-object v0
.end method
