.class public Lcom/sonyericsson/android/camera/parameter/dependency/ObjectTrackingApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "ObjectTrackingApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ObjectTrackingApplier"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ObjectTrackingApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 2

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ObjectTrackingApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    if-ne p0, v0, :cond_1

    .line 45
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_0

    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_2

    .line 48
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mTouchIntention:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    if-ne p0, v0, :cond_2

    .line 49
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mTouchIntention:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_0

    .line 57
    :cond_1
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v1, :cond_2

    .line 60
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isTouchFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 61
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isTouchAeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 62
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mTouchIntention:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_2
    :goto_0
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ObjectTrackingApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    if-ne p0, v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_1

    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_2

    .line 84
    :cond_1
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mTouchIntention:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_2
    return-void
.end method
