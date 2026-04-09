.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;
.source "ImageQualityControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;

.field private mResetButton:Landroid/view/View;

.field private mTabContainer:Landroid/widget/LinearLayout;

.field private mWidgetContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;)Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->onResetButtonClicked()V

    return-void
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;
    .locals 5

    .line 57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0086

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    .line 62
    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;

    new-instance v2, Landroid/graphics/Rect;

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v0, v2, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ControlLayoutCoordinator;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setLayoutCoordinator(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;)V

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p0, 0x4

    .line 67
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setVisibility(I)V

    return-object v0
.end method

.method private getDimensionPixelSize(I)I
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getImageQualityControlTabIcon(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 2

    .line 198
    sget-object p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    .line 215
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined title for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p0, 0x7f080166

    return p0

    :pswitch_1
    const p0, 0x7f080168

    return p0

    :pswitch_2
    const p0, 0x7f080165

    return p0

    :pswitch_3
    const p0, 0x7f080167

    return p0

    :pswitch_4
    const p0, 0x7f080169

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isUpdateAdapterNeeded(Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "+",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;)Z"
        }
    .end annotation

    .line 259
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 260
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    .line 265
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Count of tab is modified. So update this view."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v3

    :cond_3
    move v0, v1

    .line 269
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 271
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 273
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    if-nez v4, :cond_5

    .line 276
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    new-array p0, v3, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The item is removed. So update this view. key:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    .line 276
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return v3

    .line 280
    :cond_5
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    array-length v6, v6

    if-eq v5, v6, :cond_7

    .line 281
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    new-array p0, v3, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Child count of the item is modified. So update this view. key:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    .line 281
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return v3

    :cond_7
    move v5, v1

    .line 286
    :goto_2
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    array-length v6, v6

    if-ge v5, v6, :cond_c

    .line 287
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 288
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    aget-object v7, v7, v5

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 289
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_8

    new-array p0, v3, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Child item of the item is modified. So update this view. key:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " index:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    .line 289
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 293
    :cond_8
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_9

    new-array p0, v3, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  value1:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 294
    :cond_9
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_a

    new-array p0, v3, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  value2:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_a
    return v3

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_d
    return v1
.end method

.method private onResetButtonClicked()V
    .locals 3

    const/4 v0, 0x0

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 397
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v2, :cond_0

    .line 398
    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->reset()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTabContentDescription(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 1

    .line 246
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getImageQualityControlTabDescription(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result p2

    .line 247
    invoke-interface {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result p3

    .line 249
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTabIcon(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 0

    .line 187
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getImageQualityControlTabIcon(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result p0

    .line 188
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->setIcon(I)V

    return-void
.end method

.method private setTabValue(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 2

    .line 222
    sget-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 235
    :pswitch_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getImageQualityControlDefaultValue(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    if-eq p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 236
    :goto_0
    invoke-interface {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result p3

    .line 237
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->setValueText(Ljava/lang/String;Z)V

    goto :goto_1

    .line 224
    :pswitch_1
    check-cast p3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->getTabIconId()I

    move-result p0

    .line 225
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->setValueIcon(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->close()V

    return-void
.end method

.method public bridge synthetic hitTest(II)Z
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->hitTest(II)Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->onFinishInflate()V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setWillNotDraw(Z)V

    const v0, 0x7f090184

    .line 80
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mTabContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0901b9

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic open(Landroid/view/ViewGroup;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->open(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic open(Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->open(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;)V
    .locals 7

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    .line 111
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 112
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 115
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 118
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v2, 0x7f0700c5

    .line 119
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v2, 0x7f0700c4

    .line 120
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 123
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v0, 0x7f0700ca

    .line 127
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v0, 0x7f0700c9

    .line 128
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v0, v1, :cond_0

    .line 132
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mContext:Landroid/content/Context;

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mContext:Landroid/content/Context;

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mContext:Landroid/content/Context;

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v1, v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 151
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const v6, 0x7f0c0091

    .line 154
    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 155
    invoke-virtual {v6, v4}, Landroid/view/View;->setClickable(Z)V

    .line 156
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    new-instance v4, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f080346

    .line 164
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    move-object v4, v6

    check-cast v4, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;

    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setTabIcon(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    .line 166
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v5, v4}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    .line 170
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v1, 0x7f0c0090

    .line 175
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mResetButton:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mResetButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mResetButton:Landroid/view/View;

    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$2;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mTabContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mResetButton:Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic setLayoutCoordinator(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->setLayoutCoordinator(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;)V

    return-void
.end method

.method public setOnImageQualityControlDialogTabSelectListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->requestLayout()V

    const/4 v0, 0x0

    move v1, v0

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 91
    instance-of v3, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;

    if-eqz v3, :cond_0

    .line 92
    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;->setUiOrientation(I)V

    goto :goto_1

    .line 93
    :cond_0
    instance-of v3, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlResetButton;

    if-eqz v3, :cond_1

    .line 94
    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlResetButton;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlResetButton;->setUiOrientation(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 101
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v2, :cond_3

    .line 102
    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->setUiOrientation(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 105
    :cond_4
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->setSensorOrientation(I)V

    return-void
.end method

.method public update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Ljava/util/Map;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "+",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;)Z"
        }
    .end annotation

    .line 311
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->isUpdateAdapterNeeded(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    .line 317
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_9

    .line 319
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 320
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 322
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-eqz v6, :cond_8

    if-nez v2, :cond_1

    .line 327
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getImageQualityControlDefaultValue(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v7

    if-eq v6, v7, :cond_1

    move v2, v4

    .line 332
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 333
    instance-of v8, v7, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;

    if-eqz v8, :cond_3

    .line 334
    move-object v8, v7

    check-cast v8, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;

    invoke-direct {p0, v8, v5, v6}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setTabValue(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 335
    invoke-direct {p0, v8, v5, v6}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setTabContentDescription(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    if-ne v5, p1, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v1

    .line 336
    :goto_1
    invoke-virtual {v7, v8}, Landroid/view/View;->setSelected(Z)V

    .line 339
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 340
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 341
    instance-of v9, v8, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v9, :cond_6

    .line 342
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 344
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 345
    invoke-interface {v9, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->compareData(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 346
    invoke-interface {v9, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_2

    .line 348
    :cond_4
    invoke-interface {v9, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_2

    .line 352
    :cond_5
    check-cast v8, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->refresh()V

    :cond_6
    if-ne v5, p1, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    const/16 v3, 0x8

    .line 354
    :goto_3
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 359
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mResetButton:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 360
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->mResetButton:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    return v4
.end method
