.class public Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;
.super Ljava/lang/Object;
.source "CameraSettingItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;,
        Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
    }
.end annotation


# instance fields
.field private final mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private final mContext:Landroid/content/Context;

.field private final mDependencyGuideResolver:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

.field private final mHasExtraOutputPath:Z

.field private final mHasForceSoundCapability:Z

.field private final mIsOneShot:Z

.field private final mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

.field private final mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;ZZZ)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 78
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 79
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mIsOneShot:Z

    .line 80
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mHasExtraOutputPath:Z

    .line 81
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;

    .line 82
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p3

    invoke-direct {p1, p4, p3}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;-><init>(ZZ)V

    .line 83
    invoke-virtual {p1, p2, p5}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    .line 85
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isForceSound(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mHasForceSoundCapability:Z

    .line 86
    new-instance p1, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mDependencyGuideResolver:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

    return-void
.end method

.method private generateChildrenSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/cameracommon/storage/Storage;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            "Lcom/sonyericsson/cameracommon/storage/Storage;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 336
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    .line 339
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-ne v5, v6, :cond_4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v5, :cond_4

    .line 343
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 344
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 345
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v5

    .line 344
    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowFullHdSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v5

    .line 346
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v1, v6, :cond_1

    if-eqz v5, :cond_1

    .line 347
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 349
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mDependencyGuideResolver:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-boolean v11, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mIsOneShot:Z

    .line 350
    invoke-virtual {v6, v2, v10, v11, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->getDependencyGuideList(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/util/ArrayList;

    move-result-object v6

    .line 353
    new-instance v10, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    invoke-direct {v10, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder-IA;)V

    .line 354
    invoke-virtual {v10, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setUserSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v10

    .line 355
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v10

    if-ne v4, v5, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 356
    :goto_0
    invoke-virtual {v10, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    const v10, 0x7f0f0492

    .line 357
    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setSubDescriptionText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 359
    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setAdditionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 361
    invoke-virtual {v5, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelectable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 362
    invoke-virtual {v5, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsEnable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 363
    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setDependencyGuideList(Ljava/util/ArrayList;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 364
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->build()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_1
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 369
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mDependencyGuideResolver:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-boolean v11, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mIsOneShot:Z

    .line 370
    invoke-virtual {v6, v2, v10, v11, v5}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->getDependencyGuideList(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/util/ArrayList;

    move-result-object v2

    .line 373
    new-instance v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    invoke-direct {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder-IA;)V

    .line 374
    invoke-virtual {v6, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setUserSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v6

    .line 375
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v6

    if-eq v4, v5, :cond_3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v9

    .line 376
    :goto_2
    invoke-virtual {v6, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v1

    const v4, 0x7f0f0497

    .line 379
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setSubDescriptionText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v1

    .line 381
    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setAdditionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelectable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsEnable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v0

    .line 384
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setDependencyGuideList(Ljava/util/ArrayList;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->build()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3

    .line 389
    :cond_4
    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v5

    .line 391
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v6, :cond_5

    .line 393
    move-object v6, v4

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 395
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 399
    :cond_5
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v6, :cond_6

    .line 400
    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_6

    .line 401
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    .line 405
    :cond_6
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v6}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 406
    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v10}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    .line 407
    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v11}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 408
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v12}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 410
    array-length v13, v5

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_1c

    aget-object v15, v5, v14

    if-eqz v15, :cond_1b

    if-ne v4, v15, :cond_7

    move v8, v9

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    .line 413
    :goto_4
    invoke-static {v15, v11, v6, v12}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->isVideoSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v16

    .line 417
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_8

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v10, v7, :cond_8

    goto/16 :goto_a

    .line 419
    :cond_8
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_9

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v10, v7, :cond_9

    goto/16 :goto_a

    .line 421
    :cond_9
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_a

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v10, v7, :cond_a

    goto/16 :goto_a

    .line 423
    :cond_a
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_b

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v10, v7, :cond_b

    goto/16 :goto_a

    .line 425
    :cond_b
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_c

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v10, v7, :cond_c

    goto/16 :goto_a

    .line 427
    :cond_c
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_d

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v10, v7, :cond_d

    goto/16 :goto_a

    .line 431
    :cond_d
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v7, :cond_11

    .line 432
    move-object v7, v15

    check-cast v7, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 433
    invoke-interface/range {p3 .. p3}, Lcom/sonyericsson/cameracommon/storage/Storage;->getAvailableStorage()Ljava/util/List;

    move-result-object v9

    move-object/from16 v18, v5

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 438
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v9

    move/from16 v16, v5

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v9, v5, :cond_e

    move-object v5, v4

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 440
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v5, v9, :cond_e

    .line 441
    invoke-interface/range {p3 .. p3}, Lcom/sonyericsson/cameracommon/storage/Storage;->getAvailableStorage()Ljava/util/List;

    move-result-object v5

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    :goto_5
    const/16 v16, 0x1

    goto :goto_6

    .line 444
    :cond_e
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v5, v9, :cond_10

    move-object v5, v4

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 445
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v5

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v5, v9, :cond_10

    .line 447
    invoke-interface/range {p3 .. p3}, Lcom/sonyericsson/cameracommon/storage/Storage;->getAvailableStorage()Ljava/util/List;

    move-result-object v5

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 448
    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_5

    :cond_f
    move/from16 v16, v5

    .line 452
    :cond_10
    :goto_6
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v5

    .line 453
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v5

    move/from16 v7, v16

    goto :goto_7

    :cond_11
    move-object/from16 v18, v5

    move/from16 v7, v16

    const/4 v5, 0x1

    .line 456
    :goto_7
    instance-of v9, v15, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;

    if-eqz v9, :cond_12

    .line 457
    move-object v9, v15

    check-cast v9, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;->getBooleanValue()Z

    move-result v9

    const/16 v16, 0x1

    xor-int/lit8 v9, v9, 0x1

    move-object/from16 v17, v4

    goto :goto_8

    :cond_12
    const/16 v16, 0x1

    move-object/from16 v17, v4

    const/4 v9, 0x0

    .line 460
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v6

    .line 461
    invoke-interface {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v6

    move-object/from16 v20, v10

    const/4 v10, -0x1

    if-eq v6, v10, :cond_13

    .line 462
    invoke-interface {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_13
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mDependencyGuideResolver:Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;

    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-object/from16 v21, v11

    iget-boolean v11, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mIsOneShot:Z

    .line 466
    invoke-virtual {v6, v2, v10, v11, v15}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideResolver;->getDependencyGuideList(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/util/ArrayList;

    move-result-object v6

    .line 469
    new-instance v10, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder-IA;)V

    .line 470
    invoke-virtual {v10, v15}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setUserSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v10

    .line 471
    invoke-interface {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v10

    .line 472
    invoke-virtual {v10, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v8

    .line 473
    invoke-virtual {v8, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsSelectable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v7

    .line 474
    invoke-virtual {v7, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsEnable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 475
    invoke-virtual {v5, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setIsOffValue(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 476
    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setDependencyGuideList(Ljava/util/ArrayList;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    move-result-object v5

    .line 478
    sget-object v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x14

    if-eq v6, v7, :cond_15

    const/16 v7, 0x15

    const/16 v8, 0x20

    if-eq v6, v7, :cond_14

    .line 504
    invoke-static {v1, v15}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getSubDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1a

    .line 506
    invoke-direct {v0, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setSubDescriptionText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    .line 507
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    invoke-direct {v0, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 480
    :cond_14
    instance-of v6, v15, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eqz v6, :cond_1a

    .line 481
    check-cast v15, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 482
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getDescriptionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setSubDescriptionText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    .line 483
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getDescriptionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 489
    :cond_15
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne v6, v7, :cond_1a

    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 490
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getZoomStep()I

    move-result v6

    const/16 v7, 0xa8

    if-lt v6, v7, :cond_16

    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 491
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getZoomStep()I

    move-result v6

    const/16 v7, 0x198

    if-lt v6, v7, :cond_1a

    .line 492
    :cond_16
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne v15, v6, :cond_17

    .line 493
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getTextId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    goto :goto_9

    .line 494
    :cond_17
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne v15, v6, :cond_18

    .line 495
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getTextId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    goto :goto_9

    .line 496
    :cond_18
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne v15, v6, :cond_19

    .line 497
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getTextId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    goto :goto_9

    .line 498
    :cond_19
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne v15, v6, :cond_1a

    .line 499
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_FOUR_POINT_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getTextId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    .line 512
    :cond_1a
    :goto_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->setAdditionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;

    .line 514
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->build()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1b
    :goto_a
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v16, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_1c
    return-object v3
.end method

.method private generateCommonSettingItemList(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->common:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->common:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 134
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->isVisible(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0, v4, p1, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->generateKeyItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private generateKeyItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    .locals 7

    .line 257
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->generateChildrenSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/cameracommon/storage/Storage;)Ljava/util/List;

    move-result-object p3

    .line 259
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getSelectedSettingItem(Ljava/util/List;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->isSelectableKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z

    move-result v1

    .line 261
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getRestrictMessageDialogId(Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object p2

    if-nez v1, :cond_0

    .line 262
    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->DLG_INVALID:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-eq p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 263
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v3, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getInformationResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v3

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getNameResId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const v6, 0x7f0f0357

    .line 275
    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 269
    :cond_2
    const-string v6, ""

    :goto_1
    if-nez v1, :cond_3

    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0083

    .line 282
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_3
    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder-IA;)V

    .line 286
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setUserSettingKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v1

    .line 287
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setTitleResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setValueText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v1

    .line 289
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setAdditionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v1

    .line 290
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setSettingLayoutType(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v1

    .line 291
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setDescriptionResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v1

    .line 292
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getAddedDescriptionResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setAddedDescriptionResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v1

    .line 293
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->isExclusiveInformationId(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setIsExclusionInfo(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v1

    .line 294
    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setInformationResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v1

    .line 295
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setIsRestricted(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object v1

    .line 296
    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setRestrictMessageDialogId(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object p2

    .line 297
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getImageResId(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setImageResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    move-result-object p2

    .line 299
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x14

    if-eq v1, v2, :cond_4

    goto/16 :goto_2

    .line 302
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne v1, v2, :cond_9

    .line 303
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getZoomStep()I

    move-result v1

    const/16 v2, 0xa8

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 304
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getZoomStep()I

    move-result v1

    const/16 v2, 0x198

    if-lt v1, v2, :cond_9

    .line 305
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne v1, v2, :cond_6

    .line 306
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getTextId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setValueText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    goto :goto_2

    .line 307
    :cond_6
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne v1, v2, :cond_7

    .line 308
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getTextId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setValueText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    goto :goto_2

    .line 309
    :cond_7
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne v1, v2, :cond_8

    .line 310
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getTextId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setValueText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    goto :goto_2

    .line 311
    :cond_8
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne v0, v1, :cond_9

    .line 312
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ULTRA_WIDE_FOUR_POINT_FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getTextId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setValueText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    .line 318
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isCommon()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSaved()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 321
    :cond_a
    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->setOptions(Ljava/util/List;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;

    .line 324
    :cond_b
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->build()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object p0

    return-object p0
.end method

.method private generateModeSettingItemList(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->priorityHigh:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mSettingGroup:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->priorityHigh:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 120
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->isVisible(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {p0, v4, p1, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->generateKeyItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getCommonTitleResId()I
    .locals 0

    .line 148
    invoke-static {}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getCommonTitleResId()I

    move-result p0

    return p0
.end method

.method private getModeTitleResId()I
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingResource;->getModeTitleResId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I

    move-result p0

    return p0
.end method

.method private getSelectedSettingItem(Ljava/util/List;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;"
        }
    .end annotation

    .line 532
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 535
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 536
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 540
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    .line 541
    const-string p0, "The specified list doesn\'t have a selected item."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 533
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The specified list is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSelectableKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z
    .locals 2

    .line 554
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p0

    .line 556
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 570
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, p2, :cond_3

    :cond_1
    :goto_0
    move p0, v1

    goto :goto_1

    .line 558
    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 559
    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 560
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_3

    .line 561
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 562
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq p2, v0, :cond_1

    .line 563
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowFullHdSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return p0
.end method

.method private static isVideoSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 3

    .line 592
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq p3, v0, :cond_0

    return v1

    .line 597
    :cond_0
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 598
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v2, v0, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 599
    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 600
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 601
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, v0, :cond_1

    return v1

    .line 604
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    return p0

    .line 607
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p0

    return p0
.end method

.method private isVisible(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z
    .locals 4

    .line 161
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 163
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 239
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isCommon()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 236
    :pswitch_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAutoHDRSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0

    .line 233
    :pswitch_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoSuperResolutionZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0

    .line 230
    :pswitch_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperResolutionZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0

    .line 224
    :pswitch_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    .line 216
    :pswitch_4
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-nez p0, :cond_1

    return v3

    .line 213
    :pswitch_5
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSideTouchSupported()Z

    move-result p0

    return p0

    .line 210
    :pswitch_6
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0

    .line 207
    :pswitch_7
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0

    .line 204
    :pswitch_8
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBacklightCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0

    :pswitch_9
    return v3

    .line 179
    :pswitch_a
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mHasExtraOutputPath:Z

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->updateSaveDestinationSelectability(Z)V

    .line 181
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object p0

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-eq p0, p2, :cond_0

    .line 182
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->shouldStorageForceInternal(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 177
    :pswitch_b
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result p0

    return p0

    .line 174
    :pswitch_c
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mHasForceSoundCapability:Z

    xor-int/2addr p0, v2

    return p0

    .line 169
    :pswitch_d
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->mIsOneShot:Z

    if-eqz p0, :cond_1

    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p0, p1, :cond_1

    return v3

    .line 246
    :cond_1
    invoke-interface {p2, p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    array-length p0, p0

    if-gt p0, v2, :cond_2

    return v3

    .line 250
    :cond_2
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object p0

    .line 251
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-eq p0, p1, :cond_4

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSaveDestinationSelectability(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 616
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    goto :goto_0

    .line 618
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    .line 619
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UserSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->generateModeSettingItemList(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->generateCommonSettingItemList(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object p1

    .line 101
    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getModeTitleResId()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;-><init>(ILjava/util/List;)V

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->getCommonTitleResId()I

    move-result p0

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;-><init>(ILjava/util/List;)V

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
