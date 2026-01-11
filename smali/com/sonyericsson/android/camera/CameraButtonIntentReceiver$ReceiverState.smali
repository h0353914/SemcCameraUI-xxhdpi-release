.class final enum Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
.super Ljava/lang/Enum;
.source "CameraButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReceiverState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

.field public static final enum ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

.field public static final enum IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

.field public static final enum PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

.field public static final enum STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
    .locals 4

    .line 60
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    sget-object v3, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    const-string v1, "PREPARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    const-string v1, "STARTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->STARTING:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    const-string v1, "ACTIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 60
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->$values()[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->$VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
    .locals 1

    .line 60
    const-class v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
    .locals 1

    .line 60
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->$VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    return-object v0
.end method
