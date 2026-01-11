.class public Lcom/sonyericsson/android/camera/parameter/UserSettingManager;
.super Ljava/lang/Object;
.source "UserSettingManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/setting/UserSettings;


# static fields
.field public static final TAG:Ljava/lang/String; = "UserSettingManager"


# instance fields
.field private mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

.field private final mContext:Landroid/content/Context;

.field private mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

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

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 81
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$1;-><init>(Lcom/sonyericsson/android/camera/parameter/UserSettingManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    .line 96
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraApplication;

    .line 99
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraApplication;->getUserSettingsLoader()Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    .line 104
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->clear(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    return-void
.end method

.method private applyChangedValues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)V"
        }
    .end annotation

    .line 439
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 440
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

    .line 441
    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    goto :goto_1

    .line 443
    :cond_0
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set: applied(key, value) = ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 445
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->saveImmediatelyIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 449
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

    .line 450
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 451
    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_2

    .line 454
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 455
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

    .line 456
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->commit()V

    goto :goto_3

    :cond_4
    return-void
.end method

.method private clearParametersEntries(Z)V
    .locals 4

    .line 352
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

    .line 353
    iget-object v2, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v2, v3, :cond_0

    .line 354
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->clearHolder()V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_3

    .line 359
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private loadCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->needReload(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 163
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_CURRENT:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    .line 168
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 169
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    move-object v3, p1

    .line 168
    invoke-interface/range {v1 .. v8}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->getUserSettingParameters(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/configuration/Configurations;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;Z)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 176
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 177
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0, v4, v5}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->isNeededToLoad(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 178
    iget-object v5, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updatePhotoLight()V

    .line 183
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 184
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoSize(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 185
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoShutterTrigger(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 187
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToUserSettingForOneshot(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 192
    :cond_5
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mGeoTag:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 193
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    .line 192
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 194
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 196
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 197
    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setupVideoOption(Lcom/sonyericsson/android/camera/parameter/Parameters;Z)V

    .line 201
    :cond_7
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 203
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_CURRENT:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private needReload(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .locals 2

    .line 212
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

    .line 213
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
    .locals 1

    .line 475
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSecureSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_0
    return-void
.end method

.method private setDefaultToNonExistentResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 5

    .line 283
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 284
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

    .line 289
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    :cond_2
    return-void
.end method

.method private setDefaultToNonExistentVideoShutterTrigger(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 6

    .line 323
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 324
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v1

    .line 323
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 325
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

    .line 330
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 331
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result p0

    .line 330
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;)V

    :cond_2
    return-void
.end method

.method private setDefaultToNonExistentVideoSize(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 7

    .line 301
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 302
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 303
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 304
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 305
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

    .line 310
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 311
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    const/4 v2, 0x0

    .line 310
    invoke-static {v0, v1, v2, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    :cond_2
    return-void
.end method

.method private setDefaultToUserSettingForOneshot(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->getDefaultValue(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    .line 271
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->getDefaultValue(Z)Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V

    .line 272
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;)V

    return-void
.end method

.method private suspend()V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 344
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v3

    .line 343
    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->save(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    const/4 v0, 0x0

    .line 348
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->clearParametersEntries(Z)V

    return-void
.end method

.method private updateVideoOption()V
    .locals 4

    .line 260
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 261
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 262
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 263
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 265
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method


# virtual methods
.method public applyCapturingMode()V
    .locals 2

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 576
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTargetParameters()Ljava/util/EnumMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 577
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 578
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->applyChangedValues(Ljava/util/List;)V

    .line 579
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->updateVideoOption()V

    return-void
.end method

.method public changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 1

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void
.end method

.method public changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .locals 3

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "change capturing mode to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->loadCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 493
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/parameter/Parameters;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 494
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateFocusParameters()V

    .line 497
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    .line 500
    new-instance p2, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 501
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 504
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 505
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne p1, v0, :cond_0

    .line 506
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    if-ne p1, v0, :cond_1

    .line 509
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 513
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mShutterSpeed:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 514
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-eq p1, v0, :cond_3

    .line 515
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 516
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 517
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne p1, v0, :cond_3

    .line 518
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 523
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-eqz p1, :cond_4

    .line 524
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 528
    :cond_4
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p1

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 530
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 532
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    move-result-object p1

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 534
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 536
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p1

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDisplayFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 538
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDisplayFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 540
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p1

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 542
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 545
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;

    move-result-object p1

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mBackSoftSkin:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 547
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mBackSoftSkin:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 549
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    move-result-object p1

    .line 550
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontSoftSkin:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 551
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFrontSoftSkin:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    .line 553
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    aget-object v1, p1, v0

    .line 556
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    array-length v2, v2

    .line 557
    invoke-static {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->getSelectability(I)Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateSelectability()V

    .line 562
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearAllSettings()V

    .line 563
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTargetParameters()Ljava/util/EnumMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 564
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 565
    invoke-virtual {v0, p2, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public clearCachedUserSetting()V
    .locals 1

    const/4 v0, 0x1

    .line 598
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->clearParametersEntries(Z)V

    return-void
.end method

.method public clearOneshotUserSetting()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->clearTemporaryData()V

    :cond_0
    return-void
.end method

.method public clearSavedUserSetting()V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mSecureSetting:Lcom/sonyericsson/android/camera/parameter/SecureSetting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/SecureSetting;->clear()V

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->clearMasterData()V

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->release()V

    .line 593
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->load()V

    return-void
.end method

.method public commit()V
    .locals 0

    .line 584
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->suspend()V

    return-void
.end method

.method public get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 399
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    if-nez p1, :cond_0

    .line 408
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0

    .line 410
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0

    .line 412
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public getInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 0

    .line 418
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result p0

    return p0
.end method

.method public getMaxVideoSize(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    .locals 0

    .line 611
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {p0, p3, p1, p2}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object p0

    return-object p0
.end method

.method public getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    return-object p0
.end method

.method public isLimitForSizeOrDuration()Z
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->hasLimitForSizeOrDuration()Z

    move-result p0

    return p0
.end method

.method isNeededToLoad(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)Z
    .locals 2

    .line 217
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSaved()Z

    move-result p0

    if-nez p0, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isCommon()Z

    move-result p0

    return p0

    .line 220
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 221
    sget-object p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v1, :cond_1

    return v1

    :cond_1
    return v0

    .line 227
    :cond_2
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isPhoto()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 228
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

.method public prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V
    .locals 0

    .line 113
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 119
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/configuration/Configurations;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    .line 120
    invoke-virtual {p1, p4}, Lcom/sonyericsson/android/camera/configuration/Configurations;->initInSync(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 123
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 124
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getOneShotStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, p2, :cond_0

    .line 126
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mRequestedDestination:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->registerLoadCompletedListener(Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;)V

    return-void

    .line 114
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "UseSettings has been used before PlatformCapability is prepared."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public register(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 367
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "release() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingLoader:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mLoadCompletedListener:Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;->unregisterLoadCompletedListener(Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;)V

    const/4 v0, 0x1

    .line 370
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->clearParametersEntries(Z)V

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mUserSettingApplicableEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
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

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 143
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mParametersEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public resetTempParameters()V
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->resetTempParameters()V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 3

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V

    .line 432
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getChangedValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 433
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 434
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

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 277
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

    .line 294
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 295
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoSize(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V
    .locals 0

    .line 463
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->setInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V

    return-void
.end method

.method setupVideoOption(Lcom/sonyericsson/android/camera/parameter/Parameters;Z)V
    .locals 4

    .line 239
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v1

    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 240
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 241
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mOneShotMode:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    .line 247
    aget-object p0, v1, p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 250
    iget-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mConfig:Lcom/sonyericsson/android/camera/configuration/Configurations;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    .line 250
    invoke-static {v0, p2, v2, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 253
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 256
    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method
