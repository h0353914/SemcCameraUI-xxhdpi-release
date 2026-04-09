.class public Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "FocusModeApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FocusModeApplier"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-ne p0, v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    if-ne p0, v0, :cond_1

    .line 45
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 47
    :cond_1
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-ne p0, v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 64
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method
