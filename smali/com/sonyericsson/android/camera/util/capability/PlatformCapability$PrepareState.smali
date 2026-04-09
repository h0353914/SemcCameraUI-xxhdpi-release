.class final enum Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;
.super Ljava/lang/Enum;
.source "PlatformCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PrepareState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

.field public static final enum IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

.field public static final enum RUNNING:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

.field public static final enum TIMED_OUT:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 110
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 117
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->RUNNING:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    .line 122
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    const-string v1, "TIMED_OUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->TIMED_OUT:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    const/4 v0, 0x3

    .line 106
    new-array v0, v0, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->IDLE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->RUNNING:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->TIMED_OUT:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;
    .locals 1

    .line 106
    const-class v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;
    .locals 1

    .line 106
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    return-object v0
.end method
