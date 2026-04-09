.class public final enum Lcom/sonymobile/android/media/internal/Track$MuxerState;
.super Ljava/lang/Enum;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "MuxerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/android/media/internal/Track$MuxerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/media/internal/Track$MuxerState;

.field public static final enum IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

.field public static final enum STARTED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

.field public static final enum STOPPED:Lcom/sonymobile/android/media/internal/Track$MuxerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 82
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/media/internal/Track$MuxerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    .line 83
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;

    const-string v1, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/media/internal/Track$MuxerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STARTED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    .line 84
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;

    const-string v1, "STOPPED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/android/media/internal/Track$MuxerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STOPPED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    const/4 v0, 0x3

    .line 81
    new-array v0, v0, [Lcom/sonymobile/android/media/internal/Track$MuxerState;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$MuxerState;->IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STARTED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STOPPED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->$VALUES:[Lcom/sonymobile/android/media/internal/Track$MuxerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/media/internal/Track$MuxerState;
    .locals 1

    .line 81
    const-class v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/android/media/internal/Track$MuxerState;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/android/media/internal/Track$MuxerState;
    .locals 1

    .line 81
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->$VALUES:[Lcom/sonymobile/android/media/internal/Track$MuxerState;

    invoke-virtual {v0}, [Lcom/sonymobile/android/media/internal/Track$MuxerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/media/internal/Track$MuxerState;

    return-object v0
.end method
