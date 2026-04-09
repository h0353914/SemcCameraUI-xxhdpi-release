.class public final enum Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartupAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

.field public static final enum CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

.field public static final enum RECORD:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 884
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 885
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    const-string v1, "CAPTURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 886
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    const-string v1, "RECORD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->RECORD:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    const/4 v0, 0x3

    .line 883
    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->RECORD:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 883
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;
    .locals 1

    .line 883
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;
    .locals 1

    .line 883
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    return-object v0
.end method
