.class public final enum Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
.super Ljava/lang/Enum;
.source "VibrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/VibrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibrationPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

.field public static final enum EFFECT_FOR_CAPTURE:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

.field public static final enum EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;


# instance fields
.field public final mVibrationEffect:Landroid/os/VibrationEffect;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
    .locals 2

    .line 27
    sget-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_FOR_CAPTURE:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->getEffect(Z)Landroid/os/VibrationEffect;

    move-result-object v2

    const-string v3, "EFFECT_STANDARD"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    const-string v2, "EFFECT_FOR_CAPTURE"

    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->getEffect(Z)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_FOR_CAPTURE:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    .line 27
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->$values()[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->$VALUES:[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-void
.end method

.method private static getEffect(Z)Landroid/os/VibrationEffect;
    .locals 2

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    .line 41
    invoke-static {p0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0xa

    const/16 p0, 0x64

    .line 43
    invoke-static {v0, v1, p0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
    .locals 1

    .line 27
    const-class v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->$VALUES:[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    return-object v0
.end method
