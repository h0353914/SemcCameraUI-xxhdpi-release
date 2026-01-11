.class public Lcom/sonyericsson/android/camera/parameter/dependency/HdrApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "HdrApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HdrApplier"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/HdrApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/HdrApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne p0, v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_1

    .line 52
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 53
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 56
    :cond_1
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-eq p0, v0, :cond_2

    sget-object p0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 57
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isAlwaysHdrOnEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne p0, v0, :cond_3

    .line 59
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 60
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 61
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 63
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    :cond_3
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 76
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/HdrApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-eq p0, v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_1

    .line 82
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 85
    :cond_1
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object p0

    .line 88
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-eq p0, v0, :cond_2

    .line 90
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_2
    return-void
.end method
