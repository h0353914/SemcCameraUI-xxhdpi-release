.class public Lcom/sonyericsson/android/camera/setting/UiControlSettings;
.super Ljava/lang/Object;
.source "UiControlSettings.java"


# instance fields
.field private final mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "com.sonyericsson.android.camera.shared_preferences_view"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-void
.end method


# virtual methods
.method public clearUIControlSettings()V
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clearParameters(Z)V

    return-void
.end method

.method public getLastManualIqControlTab(Z)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 35
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    const-string v0, "KEY_LAST_IMAGE_QUALITY_CONTROL_TAB_FRONT"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 39
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    const-string v0, "KEY_LAST_IMAGE_QUALITY_CONTROL_TAB_MAIN"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    :goto_0
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    goto :goto_1

    .line 46
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    goto :goto_1

    .line 48
    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    goto :goto_1

    .line 50
    :cond_3
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 51
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    goto :goto_1

    .line 52
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 53
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    goto :goto_1

    .line 55
    :cond_5
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    :goto_1
    return-object p0
.end method

.method public save()V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method

.method public setLastManualIqControlTab(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 68
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string p2, "KEY_LAST_IMAGE_QUALITY_CONTROL_TAB_FRONT"

    .line 70
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p2, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string p2, "KEY_LAST_IMAGE_QUALITY_CONTROL_TAB_MAIN"

    .line 74
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p2, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
