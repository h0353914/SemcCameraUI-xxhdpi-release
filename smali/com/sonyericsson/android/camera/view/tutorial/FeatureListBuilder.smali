.class public Lcom/sonyericsson/android/camera/view/tutorial/FeatureListBuilder;
.super Ljava/lang/Object;
.source "FeatureListBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLegacyFeatureList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 48
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isPortraitSelfieAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 52
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableCameraIdsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 55
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isMonochromeSupported()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 60
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_MONO:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_4
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isBokehSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 63
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_BOKEH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_5
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableCameraIdsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 66
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 67
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_LENS_CORRECTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_7
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowMotionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 70
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_8
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_SELFIE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static getNewFeatureList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_QR_DETECT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableCameraIdsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 28
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isOpticalZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isUltraWideCameraSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_TRIPLE_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_1
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_DUAL_ZOOM_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_BOKEH_CAMERAUI:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_3
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isNightModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->FEATURE_NIGHT_MODE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
