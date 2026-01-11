.class public Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "CameraSettingsDetailFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;
    }
.end annotation


# static fields
.field private static final STATE_ITEM_KEY:Ljava/lang/String; = "CameraSettingItem"


# instance fields
.field private mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

.field private mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

.field private mOrientation:I


# direct methods
.method static bridge synthetic -$$Nest$mhandleItemClicked(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;Landroid/widget/AdapterView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->handleItemClicked(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSwitchBarClicked(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->handleSwitchBarClicked(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOrientation:I

    return-void
.end method

.method private adjustListViewHeightBasedOnChildren()V
    .locals 5

    .line 293
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090220

    .line 298
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    if-eqz p0, :cond_4

    .line 299
    invoke-virtual {p0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 303
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 311
    :goto_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    const/4 v4, 0x0

    .line 312
    invoke-interface {v0, v2, v4, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 313
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 314
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 318
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 319
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private getInformationText()Ljava/lang/String;
    .locals 14

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getInformationResId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isExclusionInfo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 370
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 374
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getDependencyGuideList()Ljava/util/List;

    move-result-object v8

    .line 375
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 376
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0f0487

    .line 378
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 379
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0f048b

    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 389
    :cond_3
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    :goto_0
    if-nez v5, :cond_2

    const v5, 0x7f0f048a

    .line 383
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 392
    :goto_1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;

    .line 394
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyValues()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v8

    array-length v8, v8

    const v9, 0x7f0f0363

    if-lez v8, :cond_6

    .line 396
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyValues()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v8

    array-length v10, v8

    move v11, v4

    :goto_3
    if-ge v11, v10, :cond_5

    aget-object v12, v8, v11

    .line 399
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v13

    .line 400
    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v13

    .line 399
    invoke-virtual {p0, v13}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    .line 397
    invoke-virtual {p0, v9, v13}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x7f0f02f7

    .line 401
    invoke-virtual {p0, v13}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-direct {p0, v12}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v12, 0x7f0f02f6

    .line 403
    invoke-virtual {p0, v12}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 410
    :cond_6
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v7

    .line 411
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v7

    .line 410
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 408
    invoke-virtual {p0, v9, v7}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 418
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v7

    if-ne v3, p0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    return-object v2
.end method

.method private getInitialSelectedValuePos()I
    .locals 2

    .line 282
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 283
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;
    .locals 0

    .line 357
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleItemClicked(Landroid/widget/AdapterView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;I)V"
        }
    .end annotation

    .line 344
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;

    .line 345
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 349
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 350
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    .line 351
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;->onValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_0
    return-void
.end method

.method private handleSwitchBarClicked(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0901e0

    .line 323
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    if-eqz p1, :cond_2

    .line 324
    invoke-virtual {p1}, Landroid/widget/Switch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 325
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 328
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isOffValue()Z

    move-result v2

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz p1, :cond_2

    .line 335
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 336
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 337
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    .line 338
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;->onValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_2
    return-void
.end method

.method public static newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;
    .locals 1

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;-><init>()V

    .line 64
    iput-object p0, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    return-object v0
.end method

.method private updateViews(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 155
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object v2

    .line 156
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 157
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSelectedValueItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v3

    const v4, 0x7f0901d9

    .line 159
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0901de

    .line 160
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901e0

    .line 161
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    const v7, 0x7f090220

    .line 162
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    const v8, 0x7f0900bc

    .line 163
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0900f5

    .line 164
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900f7

    .line 165
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0900f6

    .line 166
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f090086

    .line 167
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0901a8

    .line 168
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f0901a9

    .line 169
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f0901a6

    .line 170
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v16, v13

    const v13, 0x7f080388

    move-object/from16 v17, v14

    const/4 v14, 0x0

    invoke-virtual {v15, v13, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 171
    invoke-virtual {v1, v13}, Landroid/widget/ScrollView;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x8

    if-ne v2, v1, :cond_2

    .line 175
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {v6, v14}, Landroid/widget/Switch;->setVisibility(I)V

    .line 178
    invoke-virtual {v7, v15}, Landroid/widget/ListView;->setVisibility(I)V

    .line 180
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isOffValue()Z

    move-result v1

    xor-int/2addr v1, v13

    .line 181
    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f060077

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f06007a

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 187
    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getNameResId()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 190
    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$1;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$1;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_1

    const v1, 0x7f080394

    goto :goto_1

    :cond_1
    const v1, 0x7f080395

    :goto_1
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 199
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 201
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->VALUES_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    if-ne v2, v1, :cond_3

    .line 202
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    invoke-virtual {v6, v15}, Landroid/widget/Switch;->setVisibility(I)V

    .line 205
    invoke-virtual {v7, v14}, Landroid/widget/ListView;->setVisibility(I)V

    .line 207
    invoke-virtual {v7, v13}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 208
    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v3

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getInitialSelectedValuePos()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 208
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$2;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$2;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 220
    :cond_3
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 221
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    invoke-virtual {v6, v15}, Landroid/widget/Switch;->setVisibility(I)V

    .line 223
    invoke-virtual {v7, v15}, Landroid/widget/ListView;->setVisibility(I)V

    .line 226
    :goto_2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getDescriptionResId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 228
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getAddedDescriptionResId()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 235
    :cond_4
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 238
    :cond_5
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :goto_3
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getInformationResId()I

    move-result v1

    if-eq v1, v2, :cond_7

    .line 245
    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 246
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getInformationText()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 249
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 252
    :cond_6
    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 256
    :cond_7
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :goto_4
    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 262
    invoke-virtual {v7}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8

    .line 263
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 264
    :cond_8
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 266
    :cond_9
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :goto_5
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getImageResId()I

    move-result v1

    if-eq v1, v2, :cond_a

    move-object/from16 v2, v17

    .line 271
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v13, v16

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_a
    move-object/from16 v13, v16

    move-object/from16 v2, v17

    .line 275
    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 126
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 129
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOrientation:I

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 134
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 135
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 136
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    .line 77
    const-string p2, "CameraSettingItem"

    const-class v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 83
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOrientation:I

    const p2, 0x7f0c004b

    const/4 p3, 0x0

    .line 85
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->updateViews(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemChanged(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->updateViews(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onItemListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 106
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 120
    const-string v0, "CameraSettingItem"

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 121
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->adjustListViewHeightBasedOnChildren()V

    return-void
.end method
