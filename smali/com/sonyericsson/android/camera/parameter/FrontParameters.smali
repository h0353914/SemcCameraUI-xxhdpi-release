.class public abstract Lcom/sonyericsson/android/camera/parameter/FrontParameters;
.super Lcom/sonyericsson/android/camera/parameter/Parameters;
.source "FrontParameters.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/sonyericsson/android/camera/parameter/Parameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLandroid/content/Context;Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V

    return-void
.end method


# virtual methods
.method public getBackSoftSkin()Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;
    .locals 0

    .line 51
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;

    return-object p0
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/BackSoftSkin;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V
    .locals 0

    return-void
.end method

.method public updateFocusParameters()V
    .locals 0

    return-void
.end method

.method protected updatePhotoLight()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontParameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/FrontParameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v0, v1, :cond_0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/FrontParameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_0
    return-void
.end method
