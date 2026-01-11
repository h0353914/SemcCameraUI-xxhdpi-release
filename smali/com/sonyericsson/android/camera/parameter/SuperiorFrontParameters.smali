.class public Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;
.super Lcom/sonyericsson/android/camera/parameter/FrontParameters;
.source "SuperiorFrontParameters.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/parameter/FrontParameters;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V

    return-void
.end method


# virtual methods
.method public getChangedValues()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 108
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->hasChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    sget-object v3, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 119
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTargetParameters()Ljava/util/EnumMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mHolders:Ljava/util/Map;

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

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 132
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    .line 134
    sget-object v4, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    if-nez v3, :cond_1

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] getTargetParameters() invalid value of key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 149
    :cond_1
    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected prepare()V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->updateSelectability()V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 2

    .line 159
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/FrontParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    if-eqz v0, :cond_1

    .line 167
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    :cond_1
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;)V
    .locals 0

    return-void
.end method

.method protected updateSelectability()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mEv:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mWhiteBalance:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 67
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 68
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 67
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mAspectRatio:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mAspectRatio:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mMetering:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 80
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 79
    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .line 84
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getActionMode()Lcom/sonyericsson/android/camera/ActionMode;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getConfig()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 85
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v3

    const/4 v4, 0x0

    .line 83
    invoke-static {v1, v2, v4, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 88
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    :cond_2
    return-void
.end method
