.class public interface abstract Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;
.super Ljava/lang/Object;
.source "UserSettingsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;
    }
.end annotation


# virtual methods
.method public abstract clearMasterData()V
.end method

.method public abstract getSharedPreferencesAccessor()Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;
.end method

.method public abstract getUserSettingParameters(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/configuration/Configurations;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;Z)Lcom/sonyericsson/android/camera/parameter/Parameters;
.end method

.method public abstract load()V
.end method

.method public abstract registerLoadCompletedListener(Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract save(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract unregisterLoadCompletedListener(Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;)V
.end method
