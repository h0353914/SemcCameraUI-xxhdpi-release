.class public final enum Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;
.super Ljava/lang/Enum;
.source "LaunchCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/LaunchCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchCameraMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

.field public static final enum FOUR_K_HDR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

.field public static final enum SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

.field public static final enum SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;
    .locals 4

    .line 107
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->FOUR_K_HDR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 108
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    .line 109
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    const-string v1, "FOUR_K_HDR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->FOUR_K_HDR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    .line 110
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    const-string v1, "SLOW_MOTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    .line 111
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    const-string v1, "SUPER_SLOW_MOTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    .line 107
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->$values()[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;
    .locals 1

    .line 107
    const-class v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;
    .locals 1

    .line 107
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-object v0
.end method


# virtual methods
.method public isLaunchedByGoogleAssistant()Z
    .locals 1

    .line 115
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSlowMotion()Z
    .locals 1

    .line 119
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
