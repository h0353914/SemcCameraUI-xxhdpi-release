.class public abstract Lcom/sonyericsson/android/camera/parameter/MainParameters;
.super Lcom/sonyericsson/android/camera/parameter/Parameters;
.source "MainParameters.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/sonyericsson/android/camera/parameter/Parameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLandroid/content/Context;Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V

    return-void
.end method


# virtual methods
.method public getSoftSkin()Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 0

    .line 37
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object p0
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;)V
    .locals 0

    return-void
.end method

.method public updateFocusParameters()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/MainParameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/MainParameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 43
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object p0

    .line 42
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method

.method public updatePhotoLight()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/MainParameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 25
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/MainParameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v0, v1, :cond_0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/MainParameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_0
    return-void
.end method
