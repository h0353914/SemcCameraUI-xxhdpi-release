.class public Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "ShutterTriggerApplier.java"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    return-void
.end method

.method private applyGestureShutterOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 75
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_0

    .line 76
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_0
    return-void
.end method

.method private applyGestureShutterOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 69
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_0

    .line 70
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_0
    return-void
.end method

.method private applySmileCaptureOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 63
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_0

    .line 64
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_0
    return-void
.end method

.method private applySmileCaptureOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 57
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_0

    .line 58
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_0
    return-void
.end method

.method private resetSmileShutterOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 81
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_0

    .line 82
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$ShutterTrigger:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applySmileCaptureOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applyGestureShutterOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applySmileCaptureOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applyGestureShutterOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applySmileCaptureOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applyGestureShutterOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    :goto_0
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 2

    .line 44
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$ShutterTrigger:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->applySmileCaptureOff(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;->resetSmileShutterOn(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    :goto_0
    return-void
.end method
