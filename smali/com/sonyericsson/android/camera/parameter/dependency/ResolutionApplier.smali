.class public Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "ResolutionApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ResolutionApplier"


# instance fields
.field private final mIsCorrectionSize:Z

.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0xf00

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionApplier;->mIsCorrectionSize:Z

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 4

    .line 52
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 53
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_5

    .line 54
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionApplier;->mIsCorrectionSize:Z

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->canBeManuallySetWith(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 56
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 57
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 58
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 57
    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 59
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 60
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-ne v0, v1, :cond_3

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->canBeManuallySetWith(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 69
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 70
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 69
    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object v0

    .line 68
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 74
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-eq v0, v1, :cond_5

    .line 77
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getActionMode()Lcom/sonyericsson/android/camera/ActionMode;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 76
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFusionSupportedWith(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 78
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_1

    .line 80
    :cond_4
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 82
    :goto_1
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 84
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 89
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 91
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mAspectRatio:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-eq p0, v0, :cond_6

    .line 92
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mAspectRatio:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_6
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 2

    .line 104
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 105
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_1

    .line 106
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionApplier;->mIsCorrectionSize:Z

    if-eqz p0, :cond_0

    .line 107
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 110
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->canBeManuallySetWith(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 111
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 115
    :cond_1
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mAspectRatio:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method
