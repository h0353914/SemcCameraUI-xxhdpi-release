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
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;
    .locals 8

    .line 131
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v2, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v5, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v6, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v7, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    filled-new-array/range {v0 .. v7}, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 132
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 133
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "PREPARED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PREPARED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 134
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "STARTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STARTING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 135
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "RECORDING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RECORDING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 136
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->PAUSED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 137
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "STOPPING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 138
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "RELEASING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 139
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const-string v1, "RELEASED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    .line 131
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->$values()[Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    move-result-object v0

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

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;
    .locals 1

    .line 131
    const-class v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;
    .locals 1

    .line 131
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->$VALUES:[Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    return-object v0
.end method
