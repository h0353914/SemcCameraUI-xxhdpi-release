.class public Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;
.super Ljava/lang/Object;
.source "DependencyGuideResolver.java"


# instance fields
.field private final mDependencyGuideInfo:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->mDependencyGuideInfo:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;

    return-void
.end method

.method private generateDependencyGuide(Ljava/util/List;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;[",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 64
    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    .line 70
    iget-object v4, v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0, v4, p4}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->isSupported(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    new-instance v4, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;

    iget-object v5, v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {v4, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;-><init>(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    .line 72
    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;->mValues:[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    array-length v5, v3

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 73
    invoke-direct {p0, v7, p3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->isSupported(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    invoke-virtual {v4, v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->add(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 77
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private isSupported(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .locals 1

    .line 83
    sget-object p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return p1

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0

    .line 85
    :cond_1
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0
.end method

.method private isSupported(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z
    .locals 3

    .line 95
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    .line 96
    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p0, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public getDependencyGuideList(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Z",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->mDependencyGuideInfo:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;

    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;->getModeGroup(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 49
    iget-object v1, p3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;->mValueGroup:[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    if-eqz v1, :cond_1

    .line 50
    iget-object p3, p3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$ModeGroup;->mValueGroup:[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 51
    iget-object v4, v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-ne v4, p4, :cond_0

    .line 52
    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;->mDependencyGroups:[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    invoke-direct {p0, v0, v3, p1, p2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->generateDependencyGuide(Ljava/util/List;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
