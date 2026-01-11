.class public final enum Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;
.super Ljava/lang/Enum;
.source "LaunchCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/LaunchCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

.field public static final enum NONE_OR_DISMISSED:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

.field public static final enum SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

.field public static final enum SWIPE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;
    .locals 3

    .line 127
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->NONE_OR_DISMISSED:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SWIPE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 131
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    const-string v1, "NONE_OR_DISMISSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->NONE_OR_DISMISSED:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 135
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    const-string v1, "SWIPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SWIPE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 139
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    const-string v1, "SECURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 127
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->$values()[Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;
    .locals 1

    .line 127
    const-class v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;
    .locals 1

    .line 127
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    return-object v0
.end method
