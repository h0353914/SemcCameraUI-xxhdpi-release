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
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    const-string v1, "EFFECT_STANDARD"

    const/16 v2, 0x2715

    invoke-static {v2}, Lcom/sonymobile/vibrationeffect/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    const-string v1, "EFFECT_FOR_CAPTURE"

    const-wide/16 v4, 0xa

    const/16 v2, 0x64

    invoke-static {v4, v5, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_FOR_CAPTURE:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_STANDARD:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->EFFECT_FOR_CAPTURE:Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    aput-object v1, v0, v4

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
    .locals 1

    .line 30
    const-class v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
    .locals 1

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->$VALUES:[Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;

    return-object v0
.end method
