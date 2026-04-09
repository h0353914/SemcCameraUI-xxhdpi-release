.class final enum Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;
.super Ljava/lang/Enum;
.source "SomcMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/SomcMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "States"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum ERROR:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 115
    new-instance v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 116
    new-instance v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v1, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 117
    new-instance v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v1, "DATA_SOURCE_CONFIGURED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 118
    new-instance v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v1, "PREPARED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 119
    new-instance v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v1, "RECORDING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 120
    new-instance v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v1, "STOPPING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 121
    new-instance v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v1, "RELEASED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 122
    new-instance v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v1, "ERROR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->ERROR:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const/16 v0, 0x8

    .line 114
    new-array v0, v0, [Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->ERROR:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->$VALUES:[Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;
    .locals 1

    .line 114
    const-class v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;
    .locals 1

    .line 114
    sget-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->$VALUES:[Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v0}, [Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    return-object v0
.end method
