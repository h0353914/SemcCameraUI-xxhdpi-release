.class public interface abstract Lcom/sonyericsson/android/camera/setting/UserSettings;
.super Ljava/lang/Object;
.source "UserSettings.java"


# virtual methods
.method public abstract applyCapturingMode()V
.end method

.method public abstract changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
.end method

.method public abstract clearCachedUserSetting()V
.end method

.method public abstract clearSavedUserSetting()V
.end method

.method public abstract commit()V
.end method

.method public abstract get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
.end method

.method public abstract get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
.end method

.method public abstract getMaxVideoSize(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;
.end method

.method public abstract getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
.end method

.method public abstract getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;
.end method

.method public abstract isLimitForSizeOrDuration()Z
.end method

.method public abstract prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;Lcom/sonyericsson/android/camera/setting/ExtraSettings;)V
.end method

.method public abstract register(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
.end method

.method public abstract release()V
.end method

.method public abstract resetTempParameters()V
.end method

.method public abstract set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
.end method
