.class final enum Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
.super Ljava/lang/Enum;
.source "ObjectTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

.field public static final enum IDLE:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

.field public static final enum LOST:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

.field public static final enum STOPPED:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

.field public static final enum TRACKING:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    .locals 4

    .line 27
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->STOPPED:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->IDLE:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->TRACKING:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->LOST:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->STOPPED:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    const-string v1, "IDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->IDLE:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    const-string v1, "TRACKING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->TRACKING:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    const-string v1, "LOST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->LOST:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    .line 27
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->$values()[Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->$VALUES:[Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    .locals 1

    .line 27
    const-class v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->$VALUES:[Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    return-object v0
.end method
