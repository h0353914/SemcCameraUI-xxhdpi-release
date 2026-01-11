.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewerLaunched"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

.field public static final enum LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

.field public static final enum NOT_LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;


# instance fields
.field public final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;
    .locals 2

    .line 339
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    filled-new-array {v0, v1}, [Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 340
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    const-string v1, "NOT_LAUNCHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    .line 341
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    const-string v1, "LAUNCHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    .line 339
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->$values()[Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 346
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 347
    iput p3, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->mValue:I

    return-void
.end method

.method public static getType(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;)Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;
    .locals 0

    if-nez p0, :cond_0

    .line 351
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;
    .locals 1

    .line 339
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;
    .locals 1

    .line 339
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    return-object v0
.end method
