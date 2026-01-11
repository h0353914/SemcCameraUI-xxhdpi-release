.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zoomTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum PINCH:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum PINCH_IN:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum PINCH_OUT:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum SLIDER_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum TAP_ZOOM_FRAME:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

.field public static final enum VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;
    .locals 7

    .line 403
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP_ZOOM_FRAME:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->SLIDER_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH_IN:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    sget-object v5, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH_OUT:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    sget-object v6, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    filled-new-array/range {v0 .. v6}, [Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 404
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v1, "TAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 405
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v1, "TAP_ZOOM_FRAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP_ZOOM_FRAME:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 406
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v1, "SLIDER_BAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->SLIDER_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 407
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v1, "PINCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 408
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v1, "PINCH_IN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH_IN:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 409
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v1, "PINCH_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH_OUT:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 410
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    const-string v1, "VOLUME_KEY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 403
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->$values()[Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 403
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;
    .locals 1

    .line 403
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;
    .locals 1

    .line 403
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    return-object v0
.end method
