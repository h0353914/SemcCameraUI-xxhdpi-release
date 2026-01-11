.class Lcom/sonyericsson/android/camera/parameter/SecureSetting;
.super Ljava/lang/Object;
.source "SecureSetting.java"


# static fields
.field private static final KEY_LIFT_TRIGGER:Ljava/lang/String; = "camera_lift_trigger_enabled"

.field private static final KEY_LONG_PRESS_POWER_KEY_DISABLED:Ljava/lang/String; = "camera_long_press_camera_key_gesture_disabled"

.field private static final KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->KEY_MAP:Ljava/util/Map;

    .line 38
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "camera_lift_trigger_enabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const-string v2, "camera_long_press_camera_key_gesture_disabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 92
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 93
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSecureSetting()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 64
    sget-object p0, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->KEY_MAP:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 69
    sget-object p0, Lcom/sonyericsson/android/camera/parameter/SecureSetting$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getSecureValue()Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_1
    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->getSecureValue()Ljava/lang/String;

    :goto_0
    return-void

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot handle this key : key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Should not be saved to SecureSetting: key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
