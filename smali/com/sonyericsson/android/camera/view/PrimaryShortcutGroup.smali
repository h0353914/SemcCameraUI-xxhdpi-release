.class public Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;
.super Landroid/widget/FrameLayout;
.source "PrimaryShortcutGroup.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;


# instance fields
.field private mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

.field private mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    new-instance p1, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$1;-><init>(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    return-object p0
.end method

.method private getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 789
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 790
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

    .line 764
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 765
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

.method private getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 814
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 816
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

    .line 726
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    .line 728
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    .line 731
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 732
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p0

    return-object p0
.end method

.method private getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 3

    .line 710
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    .line 712
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    .line 715
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 716
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p0

    return-object p0
.end method

.method private getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 3

    .line 742
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getSupportedFlashModes(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/util/List;

    move-result-object p0

    .line 743
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    .line 744
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 745
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p0

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 829
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setSelected(Ljava/lang/Object;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPrimaryShortcutViewMap()Ljava/util/Map;

    move-result-object p0

    .line 162
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 164
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateShortcutLayout()V
    .locals 6

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getAllPrimaryShortcutView()Ljava/util/List;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
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

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 99
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 107
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x31

    .line 108
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0700f4

    .line 112
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getHeight()I

    move-result p0

    mul-int v4, v3, v0

    sub-int/2addr p0, v4

    sub-int/2addr v0, v2

    div-int/2addr p0, v0

    .line 119
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 120
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    add-int v5, v3, p0

    mul-int/2addr v5, v2

    .line 123
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 124
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
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

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
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

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FACING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    .line 249
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCloseSettingDialog(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900fb

    .line 73
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090100

    .line 74
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f0900fe

    .line 75
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f0900ff

    .line 76
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f0900f9

    .line 77
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f0900fc

    .line 78
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090101

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f0900fa

    .line 80
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const v0, 0x7f090073

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->updateShortcutLayout()V

    .line 87
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onOpenSettingDialog(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 192
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    return-void
.end method

.method public setViewFinderAccessor(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    return-void
.end method

.method public show()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

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
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mPrimaryShortcutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updatePrimaryShortcutIcon(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V
    .locals 1

    .line 661
    sget-object v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 691
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 692
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 694
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getIconId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 683
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 684
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 686
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getIconId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 679
    :pswitch_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 675
    :pswitch_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 671
    :pswitch_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_0

    .line 667
    :pswitch_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updatePrimaryShortcutIcons(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)V
    .locals 12

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mContextualSettingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 390
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    .line 391
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    .line 392
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    .line 393
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    .line 394
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v5

    .line 396
    sget-object v6, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const v7, 0x7f0f0062

    const v8, 0x7f0f008a

    const v9, 0x7f0f008c

    const v10, 0x7f0f0063

    const/4 v11, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_19

    .line 625
    :pswitch_0
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 627
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p3

    check-cast p3, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 626
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 629
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 630
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 631
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getIconId()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 632
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_0

    .line 634
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 636
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 637
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_1

    .line 639
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 641
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 642
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 643
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 644
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 645
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 646
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_19

    .line 606
    :pswitch_1
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 607
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 608
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_2

    .line 610
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 612
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 613
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 614
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 615
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 616
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 617
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 618
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 619
    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 618
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 620
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_19

    .line 567
    :pswitch_2
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 569
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p3

    check-cast p3, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 568
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 571
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 572
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 573
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getIconId()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 574
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_3

    .line 576
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 578
    :goto_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 579
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_4

    .line 581
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 583
    :goto_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v2, :cond_5

    .line 585
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 586
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_5

    .line 588
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_5
    if-eqz v3, :cond_6

    .line 591
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 592
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_6

    .line 594
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 596
    :goto_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 597
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 598
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 599
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 600
    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 599
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 601
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_19

    .line 526
    :pswitch_3
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 529
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p1

    check-cast p1, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 528
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentDisplayFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 531
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 532
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 531
    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 533
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getIconId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 534
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_7

    .line 536
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 538
    :goto_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v0, :cond_8

    .line 540
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 541
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_8

    .line 543
    :cond_8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_8
    if-eqz v2, :cond_9

    .line 546
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 547
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_9

    .line 549
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_9
    if-eqz v3, :cond_a

    .line 552
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 553
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_a

    .line 555
    :cond_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 557
    :goto_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 558
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 559
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 560
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 561
    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 560
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 562
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_19

    .line 476
    :pswitch_4
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 478
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 477
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentPhotoLightSetting([Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 481
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getIconId()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 483
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_b

    .line 485
    :cond_b
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 487
    :goto_b
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 488
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_c

    .line 490
    :cond_c
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 492
    :goto_c
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 493
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 494
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v4, :cond_e

    .line 496
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 497
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 498
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 499
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v0

    .line 498
    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_d

    .line 501
    :cond_d
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getIconId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 503
    :goto_d
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_e

    .line 505
    :cond_e
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_e
    if-nez p3, :cond_10

    if-eqz v5, :cond_10

    .line 508
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 509
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 510
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    goto :goto_f

    .line 512
    :cond_f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 514
    :goto_f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_10

    .line 516
    :cond_10
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 518
    :goto_10
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 519
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 520
    invoke-direct {p0, v8}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 519
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 521
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_19

    .line 438
    :pswitch_5
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 439
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p3

    check-cast p3, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 441
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 442
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 443
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getIconId()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 444
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_11

    .line 446
    :cond_11
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 448
    :goto_11
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAwbAbCompensationSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 449
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_12

    .line 451
    :cond_12
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 453
    :goto_12
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v2, :cond_13

    .line 455
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 456
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_13

    .line 458
    :cond_13
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_13
    if-eqz v3, :cond_14

    .line 461
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 462
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_14

    .line 464
    :cond_14
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 466
    :goto_14
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 467
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 468
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 469
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 470
    invoke-direct {p0, v8}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 469
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 471
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto/16 :goto_19

    .line 398
    :pswitch_6
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 399
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getFlashOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p1

    check-cast p1, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getCurrentFlashSetting([Lcom/sonyericsson/android/camera/configuration/parameters/Flash;Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 401
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 402
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 401
    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 403
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getIconId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 404
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_15

    .line 406
    :cond_15
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFlashShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 409
    :goto_15
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSemiAutoShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    if-eqz v0, :cond_16

    .line 411
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 412
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_16

    .line 414
    :cond_16
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_16
    if-eqz v2, :cond_17

    .line 417
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 418
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_17

    .line 420
    :cond_17
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mSelfTimerShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :goto_17
    if-eqz v3, :cond_18

    .line 423
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setImageResource(I)V

    .line 424
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    goto :goto_18

    .line 426
    :cond_18
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mAspectRatioShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 428
    :goto_18
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mHighSensitivityFusionShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 429
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mVideoHdrShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    .line 430
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 431
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 432
    invoke-direct {p0, v8}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 431
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->set(Z)V

    :cond_19
    :goto_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
