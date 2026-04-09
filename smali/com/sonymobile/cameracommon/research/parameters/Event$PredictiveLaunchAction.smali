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
.method static constructor <clinit>()V
    .locals 7

    .line 264
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v1, "TOUCH_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    .line 265
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v1, "HW_CAMERA_KEY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    .line 266
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v1, "VOLUME_KEY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    .line 267
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v1, "SIDE_SENSING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->SIDE_SENSING:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    .line 268
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v1, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const/4 v0, 0x5

    .line 263
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->SIDE_SENSING:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    aput-object v1, v0, v6

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

    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;
    .locals 1

    .line 263
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;
    .locals 1

    .line 263
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    return-object v0
.end method
