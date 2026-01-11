.class synthetic Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier$1;
.super Ljava/lang/Object;
.source "ShutterTriggerApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$ShutterTrigger:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$ShutterTrigger:[I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$ShutterTrigger:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->GESTURE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
