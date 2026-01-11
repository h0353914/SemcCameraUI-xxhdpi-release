.class public Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;
.super Lcom/sonyericsson/android/camera/parameter/MainParameters;
.source "WidePhotoParameters.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/parameter/MainParameters;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V

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

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mHolders:Ljava/util/Map;

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

    .line 93
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->hasChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    sget-object v3, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mHolders:Ljava/util/Map;

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

    .line 114
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mHolders:Ljava/util/Map;

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

    .line 116
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    .line 118
    sget-object v4, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 130
    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected prepare()V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->updateSelectability()V

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 2

    .line 72
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/parameter/MainParameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    if-eqz v0, :cond_1

    .line 80
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

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
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mEv:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mWhiteBalance:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 58
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 59
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 58
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mAspectRatio:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/WidePhotoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mAspectRatio:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_0
    return-void
.end method
