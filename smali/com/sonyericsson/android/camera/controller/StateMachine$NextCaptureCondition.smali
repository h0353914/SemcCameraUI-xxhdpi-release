.class final enum Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NextCaptureCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

.field public static final enum READY:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

.field public static final enum REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

.field public static final enum UNACCEPTABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;
    .locals 3

    .line 6099
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->READY:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->UNACCEPTABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6103
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->READY:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    .line 6110
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    const-string v1, "REQUESTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    .line 6116
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    const-string v1, "UNACCEPTABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->UNACCEPTABLE:Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    .line 6099
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->$values()[Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6099
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;
    .locals 1

    .line 6099
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;
    .locals 1

    .line 6099
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$NextCaptureCondition;

    return-object v0
.end method
