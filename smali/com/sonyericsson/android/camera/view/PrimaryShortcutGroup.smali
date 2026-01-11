.class public Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;
.super Landroid/widget/FrameLayout;
.source "PrimaryShortcutGroup.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;


# instance fields
.field private mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

.field private mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;


# direct methods
.method static bridge synthetic -$$Nest$fgetmViewFinderAccessor(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 328
    new-instance p1, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;-><init>(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 1043
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 1044
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 994
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 995
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private getCurrentFrontFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 1018
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 1019
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 1068
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 1070
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private getDisplayFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 3

    .line 956
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    .line 958
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    const/4 v1, 0x1

    .line 961
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 962
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p0

    return-object p0
.end method

.method private getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 3

    .line 924
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    .line 926
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    const/4 v1, 0x1

    .line 929
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 930
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p0

    return-object p0
.end method

.method private getFrontFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .locals 3

    .line 940
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    .line 942
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    const/4 v1, 0x1

    .line 945
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 946
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getFrontFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    move-result-object p0

    return-object p0
.end method

.method private getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 3

    .line 972
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    .line 973
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    const/4 v1, 0x2

    .line 974
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 975
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p0

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 1083
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setSelected(Ljava/lang/Object;Z)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPrimaryShortcutViewMap()Ljava/util/Map;

    move-result-object p0

    .line 165
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 166
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateShortcutLayout()V
    .locals 6

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getAllPrimaryShortcutView()Ljava/util/List;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    .line 111
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x31

    .line 114
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f07011a

    .line 118
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getHeight()I

    move-result p0

    mul-int v4, v3, v0

    sub-int/2addr p0, v4

    sub-int/2addr v0, v2

    div-int/2addr p0, v0

    .line 125
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    add-int v5, v3, p0

    mul-int/2addr v5, v2

    .line 129
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 130
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAllPrimaryShortcutView()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPrimaryShortcutViewMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 405
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->NIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public grayOut()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 278
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 252
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCloseSettingDialog(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09014a

    .line 78
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090150

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f09014d

    .line 80
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f09014f

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090148

    .line 82
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090147

    .line 83
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f09014b

    .line 84
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090151

    .line 85
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f09014e

    .line 86
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f0900ae

    .line 87
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->updateShortcutLayout()V

    .line 93
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onOpenSettingDialog(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setFlashShortcutEnable(Z)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->isEnabled()Z

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setEnabled(Z)V

    if-eq v0, p1, :cond_1

    .line 321
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    :cond_1
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setTouchable(Z)V

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setTouchable(Z)V

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setTouchable(Z)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setTouchable(Z)V

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setTouchable(Z)V

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setTouchable(Z)V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setTouchable(Z)V

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setTouchable(Z)V

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setTouchable(Z)V

    .line 310
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setTouchable(Z)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 190
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    return-void
.end method

.method public setViewFinderAccessor(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    return-void
.end method

.method public show()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->isBokehEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setExclusive(Z)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updatePrimaryShortcutIcon(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V
    .locals 4

    .line 827
    sget-object v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f08017c

    const v1, 0x7f080175

    const v2, 0x7f08017a

    const v3, 0x7f080174

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 900
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->isBokehEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 901
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const p2, 0x7f080261

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 902
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setExclusive(Z)V

    goto/16 :goto_0

    :cond_0
    const p1, 0x7f080263

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    .line 904
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const p2, 0x7f080262

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 905
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setExclusive(Z)V

    goto/16 :goto_0

    .line 907
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 908
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setExclusive(Z)V

    goto/16 :goto_0

    .line 892
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 893
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 895
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getIconId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 884
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 885
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 887
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getIconId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 880
    :pswitch_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    const p1, 0x7f08017d

    if-ne p2, p1, :cond_4

    .line 872
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const p1, 0x7f08017e

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 875
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 867
    :pswitch_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 863
    :pswitch_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 859
    :pswitch_7
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_8
    if-ne p2, v2, :cond_5

    .line 851
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 854
    :cond_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_9
    if-ne p2, v3, :cond_6

    .line 843
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 846
    :cond_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_a
    if-ne p2, v3, :cond_7

    .line 832
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    :cond_7
    if-ne p2, v2, :cond_8

    .line 835
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 838
    :cond_8
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updatePrimaryShortcutIcons(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 453
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 455
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    .line 456
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    .line 457
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v5

    .line 458
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v6

    .line 459
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v7}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v7

    .line 460
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->NIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v8}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v8

    .line 462
    sget-object v9, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const v11, 0x7f0800f5

    const v13, 0x7f0f0071

    const v14, 0x7f08017c

    const v15, 0x7f080175

    const v12, 0x7f0f0072

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_27

    .line 785
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 787
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v2

    .line 786
    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 789
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 790
    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 789
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 791
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    if-ne v1, v2, :cond_0

    .line 792
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v14}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 795
    :cond_0
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 797
    :goto_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_1

    .line 799
    :cond_1
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 801
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_2

    .line 804
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 806
    :goto_2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 807
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 808
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 809
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 810
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 811
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 812
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 768
    :pswitch_1
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 770
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 771
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_3

    .line 773
    :cond_3
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 775
    :goto_3
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 776
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 777
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 778
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 779
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 780
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 781
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 713
    :pswitch_2
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 715
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v2

    .line 714
    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 717
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 718
    invoke-direct {v0, v12}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 717
    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 719
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    if-ne v1, v2, :cond_4

    .line 720
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_4

    .line 723
    :cond_4
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 725
    :goto_4
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_5

    .line 727
    :cond_5
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 730
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 731
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_6

    .line 733
    :cond_6
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 735
    :goto_6
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 736
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 737
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 738
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_7

    .line 740
    :cond_7
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_7
    if-eqz v4, :cond_8

    .line 743
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 744
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_8

    .line 746
    :cond_8
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 748
    :goto_8
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 749
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 750
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 751
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isNightModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v8, :cond_a

    .line 753
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    if-ne v8, v1, :cond_9

    .line 754
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v2, 0x7f080262

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_9

    .line 757
    :cond_9
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 759
    :goto_9
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 761
    :cond_a
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 764
    :cond_b
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 665
    :pswitch_3
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 668
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v6

    .line 667
    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 670
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 671
    invoke-direct {v0, v12}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 670
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 672
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    if-ne v1, v6, :cond_c

    .line 673
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_a

    .line 676
    :cond_c
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getIconId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 678
    :goto_a
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_b

    .line 680
    :cond_d
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 683
    :goto_b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v2, :cond_f

    .line 685
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne v2, v1, :cond_e

    .line 686
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v2, 0x7f08017e

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_c

    .line 689
    :cond_e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 691
    :goto_c
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_d

    .line 693
    :cond_f
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_d
    if-eqz v4, :cond_10

    .line 696
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 697
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_e

    .line 699
    :cond_10
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 701
    :goto_e
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v5, :cond_11

    .line 703
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 704
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_f

    .line 706
    :cond_11
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 708
    :goto_f
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 709
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 710
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 649
    :pswitch_4
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 651
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_10

    .line 653
    :cond_12
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 655
    :goto_10
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 656
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 657
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 658
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 659
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 660
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 661
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 598
    :pswitch_5
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 600
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v2

    .line 599
    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 602
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 603
    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 604
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    if-ne v1, v2, :cond_13

    .line 605
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v14}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_11

    .line 608
    :cond_13
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 610
    :goto_11
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_12

    .line 612
    :cond_14
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 614
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 615
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_13

    .line 617
    :cond_15
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 619
    :goto_13
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 620
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 621
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 622
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v6, :cond_17

    .line 624
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 625
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 626
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 627
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    .line 626
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_14

    .line 629
    :cond_16
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 631
    :goto_14
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_15

    .line 633
    :cond_17
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_15
    if-nez p3, :cond_19

    if-eqz v7, :cond_19

    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 637
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 638
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_16

    .line 640
    :cond_18
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 642
    :goto_16
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_17

    .line 644
    :cond_19
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 646
    :goto_17
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 572
    :pswitch_6
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 574
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_18

    .line 576
    :cond_1a
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 578
    :goto_18
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v4, :cond_1b

    .line 580
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 581
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_19

    .line 583
    :cond_1b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 585
    :goto_19
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v5, :cond_1c

    .line 587
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 588
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_1a

    .line 590
    :cond_1c
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 592
    :goto_1a
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 593
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 594
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 515
    :pswitch_7
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 516
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 518
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 519
    invoke-direct {v0, v12}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 518
    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 520
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v2, :cond_1d

    .line 521
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_1b

    .line 523
    :cond_1d
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v2, :cond_1e

    .line 524
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v14}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_1b

    .line 527
    :cond_1e
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 529
    :goto_1b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_1c

    .line 531
    :cond_1f
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 533
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 534
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_1d

    .line 536
    :cond_20
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 538
    :goto_1d
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 539
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 540
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 541
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_1e

    .line 543
    :cond_21
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_1e
    if-eqz v4, :cond_22

    .line 546
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 547
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_1f

    .line 549
    :cond_22
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 551
    :goto_1f
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 552
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 553
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 554
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isNightModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_25

    if-eqz v8, :cond_24

    .line 556
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    if-ne v8, v1, :cond_23

    .line 557
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v2, 0x7f080262

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_20

    .line 560
    :cond_23
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 562
    :goto_20
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 564
    :cond_24
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 567
    :cond_25
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_27

    .line 464
    :pswitch_8
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 465
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v6

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 467
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 468
    invoke-direct {v0, v12}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 467
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 469
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v6, :cond_26

    .line 470
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_21

    .line 472
    :cond_26
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v6, :cond_27

    .line 473
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v14}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_21

    .line 476
    :cond_27
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getIconId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 478
    :goto_21
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_22

    .line 480
    :cond_28
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 483
    :goto_22
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v2, :cond_2a

    .line 485
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne v2, v1, :cond_29

    .line 486
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v2, 0x7f08017e

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_23

    .line 489
    :cond_29
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 491
    :goto_23
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_24

    .line 493
    :cond_2a
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_24
    if-eqz v4, :cond_2b

    .line 497
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 498
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_25

    .line 500
    :cond_2b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_25
    if-eqz v5, :cond_2c

    .line 503
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 504
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_26

    .line 506
    :cond_2c
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 508
    :goto_26
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mBokehShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 509
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 510
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 511
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mNightModeShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_27
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
