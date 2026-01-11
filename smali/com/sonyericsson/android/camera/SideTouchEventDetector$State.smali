.class final enum Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;
.super Ljava/lang/Enum;
.source "SideTouchEventDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SideTouchEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

.field public static final enum DOUBLE_TAPPING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

.field public static final enum IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

.field public static final enum SCROLLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;
    .locals 3

    .line 165
    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->SCROLLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    sget-object v2, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->DOUBLE_TAPPING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 166
    new-instance v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    const-string v1, "IDLING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    .line 167
    new-instance v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    const-string v1, "SCROLLING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->SCROLLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    .line 168
    new-instance v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    const-string v1, "DOUBLE_TAPPING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->DOUBLE_TAPPING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    .line 165
    invoke-static {}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->$values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->$VALUES:[Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;
    .locals 1

    .line 165
    const-class v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;
    .locals 1

    .line 165
    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->$VALUES:[Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    return-object v0
.end method
