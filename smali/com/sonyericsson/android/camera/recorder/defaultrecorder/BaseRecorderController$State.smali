.class public final enum Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;
.super Ljava/lang/Enum;
.source "BaseRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field public static final enum IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field public static final enum PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field public static final enum PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field public static final enum RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field public static final enum RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field public static final enum RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field public static final enum STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

.field public static final enum STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 101
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "PREPARED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "STARTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "RECORDING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 105
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 106
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "STOPPING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 107
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "RELEASING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 108
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "RELEASED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/16 v0, 0x8

    .line 100
    new-array v0, v0, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->$VALUES:[Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;
    .locals 1

    .line 100
    const-class v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;
    .locals 1

    .line 100
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->$VALUES:[Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-object v0
.end method
