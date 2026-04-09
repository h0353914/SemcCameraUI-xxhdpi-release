.class Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;
.super Ljava/lang/Object;
.source "StoredSettingsProxy.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/setting/StoredSettings;


# instance fields
.field private mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

.field private mMessageSettingManager:Lcom/sonyericsson/android/camera/setting/MessageSettings;

.field private mUiControlSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

.field private mUserSettingManager:Lcom/sonyericsson/android/camera/setting/UserSettings;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mUserSettingManager:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 24
    new-instance p2, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;

    invoke-direct {p2, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mMessageSettingManager:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    .line 25
    new-instance p2, Lcom/sonyericsson/android/camera/setting/LastSettings;

    invoke-direct {p2, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    .line 26
    new-instance p2, Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    invoke-direct {p2, p1}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mUiControlSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    return-void
.end method


# virtual methods
.method public clearAllSettings(Lcom/sonyericsson/cameracommon/storage/Storage;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mUserSettingManager:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearSavedUserSetting()V

    .line 52
    iget-object p1, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mUserSettingManager:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->release()V

    .line 53
    iget-object p1, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mMessageSettingManager:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->clearSavedMessageSettings()V

    .line 54
    iget-object p1, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mUiControlSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->clearUIControlSettings()V

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->clear()V

    return-void
.end method

.method public getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mLastSettings:Lcom/sonyericsson/android/camera/setting/LastSettings;

    return-object p0
.end method

.method public getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mMessageSettingManager:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    return-object p0
.end method

.method public getUiControlSettings()Lcom/sonyericsson/android/camera/setting/UiControlSettings;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mUiControlSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    return-object p0
.end method

.method public getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;->mUserSettingManager:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method
