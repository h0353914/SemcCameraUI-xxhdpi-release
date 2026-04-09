.class public Lcom/sonyericsson/android/camera/parameter/UserSettingManager;
.super Ljava/lang/Object;
.source "UserSettingManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/setting/UserSettings;


# static fields
.field public static final TAG:Ljava/lang/String; = "UserSettingManager"


# instance fields
.field private mCanWrite:Z

.field private mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

.field private final mContext:Landroid/content/Context;

.field private mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

.field private mExtraSettings:Lcom/sonyericsson/android/camera/setting/ExtraSettings;

.field private final mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

.field private final mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

.field private mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

.field private volatile mParametersEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field private final mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

.field private final mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private final mUserSettingApplicableEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$1;-><init>(Lcom/sonyericsson/android/camera/parameter/UserSettingManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraApplication;

    .line 97
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraApplication;->getUserSettingsLoader()Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    .line 100
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    .line 101
    new-instance p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->clear(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    return-void
.end method

.method private applyChangedValues(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)V"
        }
    .end annotation

    .line 474
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 475
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

    .line 476
    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    goto :goto_1

    .line 478
    :cond_0
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set: applied(key, value) = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 478
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 480
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->saveImmediatelyIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    .line 483
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTargetParameters()Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 485
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 486
    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_2

    .line 489
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 490
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;

    .line 491
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->commit()V

    goto :goto_3

    :cond_4
    return-void
.end method

.method private applyExtraSettings(Lcom/sonyericsson/android/camera/parameter/Parameters;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 273
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 274
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 275
    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearParametersEntries(Z)V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    if-nez p1, :cond_1

    .line 396
    iget-object v2, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v2, v3, :cond_0

    .line 397
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->clearHolder()V

    goto :goto_0

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_3

    .line 402
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private loadCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->needReload(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 160
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_CURRENT:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 166
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    move-object v3, p1

    .line 165
    invoke-interface/range {v1 .. v8}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->getUserSettingParameters(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/configuration/Configurations;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;Z)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    .line 170
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 171
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, v4, v5}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->isNeededToLoad(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 172
    iget-object v5, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updatePhotoLight()V

    .line 177
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoSize(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoShutterTrigger(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToUserSettingForOneshot(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 186
    :cond_4
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mGeoTag:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 187
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    .line 186
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 190
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 191
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setupVideoOption(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 194
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mExtraSettings:Lcom/sonyericsson/android/camera/setting/ExtraSettings;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setExtraSettings(Lcom/sonyericsson/android/camera/setting/ExtraSettings;Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 197
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 199
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_CURRENT:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private needReload(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    .line 209
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private saveImmediatelyIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 3

    .line 513
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 514
    sget-object v1, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 527
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSecureSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    .line 520
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCanWrite:Z

    if-nez p1, :cond_0

    .line 521
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Settings SHOULD not be saved after pausing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    .line 524
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->getSharedPreferencesAccessor()Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object p0

    .line 523
    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->writeSharedPrefs(Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setDefaultToNonExistentResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 5

    .line 323
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 324
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 329
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    :cond_2
    return-void
.end method

.method private setDefaultToNonExistentVideoShutterTrigger(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 6

    .line 363
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 364
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v1

    .line 363
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 365
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoShutterTrigger()Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 370
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 371
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result p0

    .line 370
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;)V

    :cond_2
    return-void
.end method

.method private setDefaultToNonExistentVideoSize(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 7

    .line 341
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 342
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 343
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 344
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 345
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 350
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 351
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    .line 350
    invoke-static {v0, v1, v2, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    :cond_2
    return-void
.end method

.method private setDefaultToUserSettingForOneshot(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getDefaultValue(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    .line 311
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->getDefaultValue(Z)Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V

    .line 312
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;)V

    return-void
.end method

.method private setExtraSettings(Lcom/sonyericsson/android/camera/setting/ExtraSettings;Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 252
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->getValues()Ljava/util/Map;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->getValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 255
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 257
    iget-object v4, p2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v4, v2, :cond_1

    .line 258
    invoke-direct {p0, p2, v3}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->applyExtraSettings(Lcom/sonyericsson/android/camera/parameter/Parameters;Ljava/util/List;)V

    .line 259
    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->clearValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 262
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 264
    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->applyExtraSettings(Lcom/sonyericsson/android/camera/parameter/Parameters;Ljava/util/List;)V

    .line 265
    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->clearValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private suspend()V
    .locals 4

    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCanWrite:Z

    .line 385
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->save(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 391
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->clearParametersEntries(Z)V

    return-void
.end method

.method private updateVideoOption()V
    .locals 4

    .line 300
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 301
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 302
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 303
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 305
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method


# virtual methods
.method public applyCapturingMode()V
    .locals 2

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 599
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTargetParameters()Ljava/util/EnumMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 600
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 601
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->applyChangedValues(Ljava/util/List;)V

    .line 602
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->updateVideoOption()V

    return-void
.end method

.method public changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 4

    const/4 v0, 0x1

    .line 536
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change capturing mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 537
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCanWrite:Z

    .line 539
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->loadCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateFocusParameters()V

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    .line 549
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 550
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 553
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 554
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne p1, v1, :cond_0

    .line 555
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 559
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-eqz p1, :cond_1

    .line 560
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 564
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p1

    .line 565
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 568
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p1

    .line 569
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDisplayFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 570
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDisplayFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 572
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p1

    .line 573
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 574
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 576
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v1, p1, v3

    .line 579
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    array-length v2, v2

    .line 580
    invoke-static {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->getSelectability(I)Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateSelectability()V

    .line 585
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 586
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTargetParameters()Ljava/util/EnumMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 587
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 588
    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public clearCachedUserSetting()V
    .locals 1

    const/4 v0, 0x1

    .line 621
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->clearParametersEntries(Z)V

    return-void
.end method

.method public clearSavedUserSetting()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->clear()V

    .line 613
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->clearMasterData()V

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->release()V

    .line 616
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->load()V

    return-void
.end method

.method public commit()V
    .locals 0

    .line 607
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->suspend()V

    return-void
.end method

.method public get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 442
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 450
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0

    .line 452
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public getMaxVideoSize(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {p0, p3, p1, p2}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object p0

    return-object p0
.end method

.method public getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    return-object p0
.end method

.method public isLimitForSizeOrDuration()Z
    .locals 0

    .line 632
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->hasLimitForSizeOrDuration()Z

    move-result p0

    return p0
.end method

.method isNeededToLoad(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)Z
    .locals 2

    .line 213
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSaved()Z

    move-result p0

    if-nez p0, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isCommon()Z

    move-result p0

    return p0

    .line 216
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 217
    sget-object p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v1, :cond_1

    return v1

    :cond_1
    return v0

    .line 223
    :cond_2
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isPhoto()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 224
    sget-object p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;Lcom/sonyericsson/android/camera/setting/ExtraSettings;)V
    .locals 0

    .line 111
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "UseSettings has been used before PlatformCapability is prepared."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_0
    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 117
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/configuration/Configurations;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    .line 118
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {p1, p4}, Lcom/sonyericsson/android/camera/configuration/Configurations;->initInSync(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    .line 119
    iput-object p5, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mExtraSettings:Lcom/sonyericsson/android/camera/setting/ExtraSettings;

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 122
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 123
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, p2, :cond_1

    .line 124
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->registerLoadCompletedListener(Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;)V

    return-void
.end method

.method public register(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 410
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "release() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->unregisterLoadCompletedListener(Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;)V

    const/4 v0, 0x1

    .line 413
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->clearParametersEntries(Z)V

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->clear(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    return-void
.end method

.method replaceParameterEntries(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public resetTempParameters()V
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->resetTempParameters()V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 5

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 461
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    .line 467
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getChangedValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 468
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 469
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->applyChangedValues(Ljava/util/List;)V

    return-void
.end method

.method setDefaultToNonExistentResolution(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 317
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setDefaultToNonExistentVideoShutterTrigger(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 357
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoShutterTrigger(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setDefaultToNonExistentVideoSize(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;)V"
        }
    .end annotation

    .line 334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 335
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoSize(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setupVideoOption(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 4

    .line 281
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 282
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 283
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 284
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    .line 289
    aget-object p0, v1, p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 292
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    .line 291
    invoke-static {v0, v2, v3, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 293
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 296
    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method
