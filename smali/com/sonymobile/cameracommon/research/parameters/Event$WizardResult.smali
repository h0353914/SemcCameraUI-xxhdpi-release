.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/Event$Label;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WizardResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Label;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

.field public static final enum BACK_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

.field public static final enum GOT_IT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

.field public static final enum NEXT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

.field public static final enum NO:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

.field public static final enum OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

.field public static final enum PREVIOUS:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

.field public static final enum SKIP:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

.field public static final enum YES:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 289
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    const-string v1, "YES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->YES:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 290
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    const-string v1, "NO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->NO:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 291
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    const-string v1, "GOT_IT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->GOT_IT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 292
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    const-string v1, "PREVIOUS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->PREVIOUS:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 293
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    const-string v1, "NEXT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->NEXT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 294
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    const-string v1, "BACK_KEY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->BACK_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 295
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    const-string v1, "SKIP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->SKIP:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 296
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    const-string v1, "OTHER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    const/16 v0, 0x8

    .line 288
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->YES:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->NO:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->GOT_IT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->PREVIOUS:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->NEXT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->BACK_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->SKIP:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;
    .locals 1

    .line 288
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;
    .locals 1

    .line 288
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    return-object v0
.end method
