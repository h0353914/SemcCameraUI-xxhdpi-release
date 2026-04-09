.class final enum Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;
.super Ljava/lang/Enum;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SideTouchEventSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;",
        ">;",
        "Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

.field public static final enum SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 197
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    const-string v1, "SIDE_SENSOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    const/4 v0, 0x1

    .line 196
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->SIDE_SENSOR:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->$VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;
    .locals 1

    .line 196
    const-class v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;
    .locals 1

    .line 196
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->$VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    return-object v0
.end method
