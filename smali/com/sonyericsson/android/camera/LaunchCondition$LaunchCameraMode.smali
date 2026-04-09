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
.method static constructor <clinit>()V
    .locals 6

    .line 111
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    .line 112
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    const-string v1, "FOUR_K_HDR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->FOUR_K_HDR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    .line 113
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    const-string v1, "SLOW_MOTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    .line 114
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    const-string v1, "SUPER_SLOW_MOTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    const/4 v0, 0x4

    .line 110
    new-array v0, v0, [Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->FOUR_K_HDR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    aput-object v1, v0, v5

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

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;
    .locals 1

    .line 110
    const-class v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;
    .locals 1

    .line 110
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-object v0
.end method


# virtual methods
.method public isLaunchedByGoogleAssistant()Z
    .locals 1

    .line 118
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

    .line 122
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
