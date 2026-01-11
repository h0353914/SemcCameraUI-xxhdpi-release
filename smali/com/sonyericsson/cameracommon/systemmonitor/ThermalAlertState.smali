.class public final enum Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;
.super Ljava/lang/Enum;
.source "ThermalAlertState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum CRITICAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final TAG:Ljava/lang/String; = "ThermalAlertState"

.field public static final enum VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field public static final enum WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

.field private static volatile m4kTempOptions:[I

.field private static mCurrentTempOptions:[I

.field private static volatile mNormalTempOptions:[I


# instance fields
.field private final mAction:Ljava/lang/String;

.field private volatile mTemperatureThreshold:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;
    .locals 7

    .line 19
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    sget-object v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    sget-object v2, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    sget-object v3, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    sget-object v4, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    sget-object v5, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    sget-object v6, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->CRITICAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    filled-new-array/range {v0 .. v6}, [Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const/4 v1, 0x0

    const-string v2, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    const-string v3, "NORMAL_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const/4 v1, 0x1

    const-string v2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

    const-string v3, "WARNING_EXTRA_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 24
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const/4 v1, 0x2

    const-string v2, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    const-string v3, "WARNING_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 26
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const/4 v1, 0x3

    const-string v2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    const-string v3, "FIX_LOW_TEMP_BURN_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 28
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const/4 v1, 0x4

    const-string v2, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    const-string v3, "VARIABLE_LOW_TEMP_BURN_RESET_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 30
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const/4 v1, 0x5

    const-string v2, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    const-string v3, "VARIABLE_LOW_TEMP_BURN_SET_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    const/4 v1, 0x6

    const-string v2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    const-string v3, "CRITICAL_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->CRITICAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    .line 19
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->$values()[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->$VALUES:[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static getThermalAlertAction(I)Ljava/lang/String;
    .locals 2

    .line 48
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->NORMAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_0

    .line 49
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 50
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_EXTRA_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_1

    .line 51
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 52
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->WARNING_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_2

    .line 53
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 54
    :cond_2
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->FIX_LOW_TEMP_BURN_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_3

    .line 55
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 56
    :cond_3
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_RESET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_4

    .line 57
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 58
    :cond_4
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->VARIABLE_LOW_TEMP_BURN_SET_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget v1, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    if-ge p0, v1, :cond_5

    .line 59
    iget-object p0, v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0

    .line 61
    :cond_5
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->CRITICAL_STATE:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public static set4KRecordingTemperatureThreshold(Landroid/content/Context;)V
    .locals 1

    .line 87
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->m4kTempOptions:[I

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f030000

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->m4kTempOptions:[I

    .line 91
    :cond_0
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->m4kTempOptions:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 92
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->m4kTempOptions:[I

    sput-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    .line 93
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->updateTemperatureThreshold([I)V

    :cond_1
    return-void
.end method

.method public static setNormalTemperatureThreshold(Landroid/content/Context;)V
    .locals 1

    .line 76
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mNormalTempOptions:[I

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030002

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mNormalTempOptions:[I

    .line 80
    :cond_0
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mNormalTempOptions:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 81
    sget-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mNormalTempOptions:[I

    sput-object p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mCurrentTempOptions:[I

    .line 82
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->updateTemperatureThreshold([I)V

    :cond_1
    return-void
.end method

.method private static updateTemperatureThreshold([I)V
    .locals 4

    .line 66
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->values()[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 68
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxTemp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ThermalAlertState"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 71
    :cond_0
    aget-object v2, v0, v1

    aget v3, p0, v1

    iput v3, v2, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->mTemperatureThreshold:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;
    .locals 1

    .line 19
    const-class v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;
    .locals 1

    .line 19
    sget-object v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->$VALUES:[Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertState;

    return-object v0
.end method
