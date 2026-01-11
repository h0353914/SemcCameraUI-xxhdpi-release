.class public Lcom/sonyericsson/android/camera/parameter/dependency/FusionModeApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "FusionModeApplier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FusionModeApplier"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/FusionModeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 3

    .line 35
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/FusionModeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne p0, v0, :cond_1

    .line 36
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 38
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 37
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isStillHdrSupportedWith(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 39
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 40
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isAlwaysHdrOnEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 41
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 42
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 47
    :cond_1
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 48
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 49
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    .line 48
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 50
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->adjustToSupportedValue(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/FusionModeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne p0, v0, :cond_0

    .line 56
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 58
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 57
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isStillHdrSupportedWith(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 59
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_0
    return-void
.end method
