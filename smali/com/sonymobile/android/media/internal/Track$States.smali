.class public final enum Lcom/sonymobile/android/media/internal/Track$States;
.super Ljava/lang/Enum;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "States"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/android/media/internal/Track$States;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/media/internal/Track$States;

.field public static final enum PAUSED:Lcom/sonymobile/android/media/internal/Track$States;

.field public static final enum STARTED:Lcom/sonymobile/android/media/internal/Track$States;

.field public static final enum STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

.field public static final enum STOPPING:Lcom/sonymobile/android/media/internal/Track$States;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/android/media/internal/Track$States;
    .locals 4

    .line 107
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STARTED:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v3, Lcom/sonymobile/android/media/internal/Track$States;->PAUSED:Lcom/sonymobile/android/media/internal/Track$States;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonymobile/android/media/internal/Track$States;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 108
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$States;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/media/internal/Track$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STARTED:Lcom/sonymobile/android/media/internal/Track$States;

    .line 109
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$States;

    const-string v1, "STOPPED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/media/internal/Track$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    .line 110
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$States;

    const-string v1, "STOPPING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/media/internal/Track$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    .line 111
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$States;

    const-string v1, "PAUSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/media/internal/Track$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/Track$States;->PAUSED:Lcom/sonymobile/android/media/internal/Track$States;

    .line 107
    invoke-static {}, Lcom/sonymobile/android/media/internal/Track$States;->$values()[Lcom/sonymobile/android/media/internal/Track$States;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/media/internal/Track$States;->$VALUES:[Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/media/internal/Track$States;
    .locals 1

    .line 107
    const-class v0, Lcom/sonymobile/android/media/internal/Track$States;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/android/media/internal/Track$States;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/android/media/internal/Track$States;
    .locals 1

    .line 107
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->$VALUES:[Lcom/sonymobile/android/media/internal/Track$States;

    invoke-virtual {v0}, [Lcom/sonymobile/android/media/internal/Track$States;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/media/internal/Track$States;

    return-object v0
.end method
