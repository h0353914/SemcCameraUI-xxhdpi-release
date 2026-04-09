.class synthetic Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$2;
.super Ljava/lang/Object;
.source "CameraSettingsMigrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 642
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
