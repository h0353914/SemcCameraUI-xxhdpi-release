.class public Lcom/sonyericsson/android/camera/parameter/dependency/ShutterSpeedApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "ShutterSpeedApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ShutterSpeedApplier"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterSpeedApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterSpeedApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    if-ne p0, v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedAeModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    const-string v0, "semi-auto"

    .line 33
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 34
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_1
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 0

    return-void
.end method
