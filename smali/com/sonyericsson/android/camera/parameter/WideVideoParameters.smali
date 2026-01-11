.class public Lcom/sonyericsson/android/camera/parameter/WideVideoParameters;
.super Lcom/sonyericsson/android/camera/parameter/MainParameters;
.source "WideVideoParameters.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/parameter/MainParameters;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V

    return-void
.end method


# virtual methods
.method public getTargetParameters()Ljava/util/EnumMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/WideVideoParameters;->mHolders:Ljava/util/Map;

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

    .line 60
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/WideVideoParameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    .line 64
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-eq v2, v4, :cond_0

    .line 65
    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected prepare()V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/WideVideoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoCodec:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method protected updateSelectability()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/WideVideoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/WideVideoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/WideVideoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/WideVideoParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    :cond_1
    return-void
.end method
