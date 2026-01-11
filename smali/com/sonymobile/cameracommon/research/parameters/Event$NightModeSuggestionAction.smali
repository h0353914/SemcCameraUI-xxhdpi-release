.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NightModeSuggestionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

.field public static final enum CLOSE:Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

.field public static final enum SHOW:Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

.field public static final enum TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;
    .locals 3

    .line 416
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;->SHOW:Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;->TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;->CLOSE:Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    filled-new-array {v0, v1, v2}, [Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 417
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    const-string v1, "SHOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;->SHOW:Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    .line 418
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    const-string v1, "TAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;->TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    .line 419
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    const-string v1, "CLOSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;->CLOSE:Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    .line 416
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;->$values()[Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;
    .locals 1

    .line 416
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;
    .locals 1

    .line 416
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$NightModeSuggestionAction;

    return-object v0
.end method
