.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "windNoiseReduction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

.field public static final enum START:Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;
    .locals 1

    .line 425
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;->START:Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

    filled-new-array {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 426
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;->START:Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

    .line 425
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;->$values()[Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 425
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;
    .locals 1

    .line 425
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;
    .locals 1

    .line 425
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$windNoiseReduction;

    return-object v0
.end method
