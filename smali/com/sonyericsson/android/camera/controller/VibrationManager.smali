.class public Lcom/sonyericsson/android/camera/controller/VibrationManager;
.super Ljava/lang/Object;
.source "VibrationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;
    }
.end annotation


# static fields
.field private static final DEFAULT_VIBRATION_PATTERN:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VibrationManager;->DEFAULT_VIBRATION_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static vibrate(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;)V
    .locals 4

    .line 55
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 57
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    .line 58
    iget-object p1, p1, Lcom/sonyericsson/android/camera/controller/VibrationManager$VibrationPattern;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_1

    .line 60
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/controller/VibrationManager;->DEFAULT_VIBRATION_PATTERN:[J

    .line 62
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "array"

    const-string v2, "android"

    .line 63
    const-string v3, "config_longPressVibePattern"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    array-length v1, v0

    if-lez v1, :cond_1

    .line 69
    array-length p1, v0

    new-array p1, p1, [J

    const/4 v1, 0x0

    .line 71
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 72
    aget v2, v0, v1

    int-to-long v2, v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 76
    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_1
    return-void
.end method
