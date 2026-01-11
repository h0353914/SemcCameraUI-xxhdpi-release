.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;
.source "ManualIqControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;,
        Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnDialogTabSelectListener;
    }
.end annotation


# static fields
.field private static final GRAY_OUT_ALPHA:F = 0.4f

.field private static final VISIBLE_ALPHA:F = 1.0f


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnDialogTabSelectListener;

.field private mResetButton:Landroid/view/View;

.field private mTabContainer:Landroid/widget/LinearLayout;

.field private mWidgetContainer:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;)Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnDialogTabSelectListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnDialogTabSelectListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monResetButtonClicked(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->onResetButtonClicked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;
    .locals 5

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c009c

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 67
    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;

    new-instance v2, Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v0, v2, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ControlLayoutCoordinator;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setLayoutCoordinator(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/LayoutCoordinator;)V

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p0, 0x4

    .line 72
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setVisibility(I)V

    return-object v0
.end method

.method private getDimensionPixelSize(I)I
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTabIcon(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 2

    .line 212
    sget-object p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const p0, 0x7f08019c

    return p0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Undefined title for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x7f08019e

    return p0

    :cond_2
    const p0, 0x7f08019b

    return p0

    :cond_3
    const p0, 0x7f08019d

    return p0

    :cond_4
    const p0, 0x7f08019f

    return p0
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

    .line 274
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

    .line 275
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    .line 280
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

    .line 284
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 286
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 288
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    if-nez v4, :cond_5

    .line 291
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "The item is removed. So update this view. key:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 291
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return v3

    .line 295
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

    .line 296
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Child count of the item is modified. So update this view. key:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 296
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return v3

    :cond_7
    move v5, v1

    .line 301
    :goto_2
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    array-length v6, v6

    if-ge v5, v6, :cond_c

    .line 302
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 303
    invoke-interface {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    aget-object v7, v7, v5

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 304
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Child item of the item is modified. So update this view. key:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " index:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 308
    :cond_8
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "  value1:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    aget-object p1, p1, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 309
    :cond_9
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "  value2:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

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

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 449
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v2, :cond_0

    .line 450
    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->reset()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTabContentDescription(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 1

    .line 260
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getManualIqControlTabDescription(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result p2

    .line 261
    invoke-interface {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result p3

    .line 263
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 265
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->setContentDescription(Ljava/lang/CharSequence;)V

    const p0, 0x7f090117

    .line 266
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->setAccessibilityTraversalAfter(I)V

    return-void
.end method

.method private setTabIcon(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 0

    .line 201
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getTabIcon(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result p0

    .line 202
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->setIcon(I)V

    return-void
.end method

.method private setTabValue(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 3

    .line 236
    sget-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getManualIqControlDefaultValue(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p2

    if-eq p3, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 250
    :goto_0
    invoke-interface {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result p2

    .line 251
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->setValueText(Ljava/lang/String;Z)V

    goto :goto_1

    .line 238
    :cond_2
    check-cast p3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->getTabIconId()I

    move-result p0

    .line 239
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->setValueIcon(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->close()V

    return-void
.end method

.method public bridge synthetic hitTest(II)Z
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->hitTest(II)Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->onFinishInflate()V

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setWillNotDraw(Z)V

    const v0, 0x7f0901e2

    .line 85
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mTabContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f090228

    .line 86
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic open(Landroid/view/ViewGroup;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->open(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic open(Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->open(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;)V
    .locals 8

    .line 115
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 117
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 120
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 123
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v2, 0x7f0700e6

    .line 124
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v2, 0x7f0700e3

    .line 125
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 128
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v0, 0x7f0700ec

    .line 132
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v0, 0x7f0700eb

    .line 133
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    const v3, 0x7f0700e4

    if-le v0, v1, :cond_1

    .line 137
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mContext:Landroid/content/Context;

    iget v4, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 145
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 147
    iget v4, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-le v4, v1, :cond_0

    .line 148
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mContext:Landroid/content/Context;

    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mContext:Landroid/content/Context;

    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 160
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v1, v4, :cond_2

    .line 161
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 162
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const v7, 0x7f0c00a6

    .line 165
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 166
    invoke-virtual {v7, v5}, Landroid/view/View;->setClickable(Z)V

    .line 167
    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    new-instance v5, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f080391

    .line 175
    invoke-virtual {v7, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 176
    move-object v5, v7

    check-cast v5, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;

    invoke-direct {p0, v5, v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setTabIcon(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    .line 177
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v6, v5}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    .line 181
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const p1, 0x7f0700e5

    .line 185
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 186
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const p1, 0x7f0c00a5

    .line 188
    invoke-virtual {v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mResetButton:Landroid/view/View;

    .line 189
    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 190
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mResetButton:Landroid/view/View;

    const v0, 0x7f090117

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 191
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mResetButton:Landroid/view/View;

    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$2;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mTabContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mResetButton:Landroid/view/View;

    invoke-virtual {p1, p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setGray(Z)V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mTabContainer:Landroid/widget/LinearLayout;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    xor-int/lit8 p1, p1, 0x1

    .line 320
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setTouchable(Z)V

    return-void
.end method

.method public bridge synthetic setLayoutCoordinator(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/LayoutCoordinator;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->setLayoutCoordinator(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/LayoutCoordinator;)V

    return-void
.end method

.method public setOnDialogTabSelectListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnDialogTabSelectListener;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnDialogTabSelectListener;

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->requestLayout()V

    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 96
    instance-of v3, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;

    if-eqz v3, :cond_0

    .line 97
    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->setUiOrientation(I)V

    goto :goto_1

    .line 98
    :cond_0
    instance-of v3, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;

    if-eqz v3, :cond_1

    .line 99
    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->setUiOrientation(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 106
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v2, :cond_3

    .line 107
    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->setUiOrientation(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 110
    :cond_4
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingDialog;->setSensorOrientation(I)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 324
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 326
    instance-of v3, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;

    if-eqz v3, :cond_0

    .line 327
    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->setClickable(Z)V

    goto :goto_1

    .line 328
    :cond_0
    instance-of v3, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;

    if-eqz v3, :cond_1

    .line 329
    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlResetButton;->setClickable(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 333
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 334
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v2, :cond_3

    .line 335
    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->setClickable(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;Ljava/util/Map;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "+",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;)Z"
        }
    .end annotation

    .line 349
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->isUpdateAdapterNeeded(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    .line 355
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_a

    .line 357
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 358
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 360
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-eqz v6, :cond_9

    if-nez v2, :cond_1

    .line 365
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getManualIqControlDefaultValue(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v7

    if-eq v6, v7, :cond_1

    move v2, v4

    .line 370
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 371
    instance-of v8, v7, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;

    if-eqz v8, :cond_4

    .line 372
    move-object v8, v7

    check-cast v8, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;

    invoke-direct {p0, v8, v5, v6}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setTabValue(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 373
    invoke-direct {p0, v8, v5, v6}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setTabContentDescription(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    if-ne v5, p1, :cond_2

    move v9, v4

    goto :goto_1

    :cond_2
    move v9, v1

    .line 374
    :goto_1
    invoke-virtual {v7, v9}, Landroid/view/View;->setSelected(Z)V

    .line 375
    invoke-virtual {v8, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->setOnTabAvailableListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;)V

    .line 376
    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v5, v9, :cond_4

    .line 377
    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    if-eq v9, v10, :cond_3

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 378
    invoke-interface {p3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-eq v9, v10, :cond_3

    .line 379
    invoke-virtual {v8, v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlTab;->setTabNotAvailableKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    .line 380
    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 382
    :cond_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 387
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mWidgetContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 388
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 389
    instance-of v9, v8, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v9, :cond_7

    .line 390
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 392
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 393
    invoke-interface {v9, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->compareData(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 394
    invoke-interface {v9, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_3

    .line 396
    :cond_5
    invoke-interface {v9, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_3

    .line 400
    :cond_6
    check-cast v8, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->refresh()V

    :cond_7
    const v3, 0x7f090117

    .line 402
    invoke-virtual {v7, v3}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    if-ne v5, p1, :cond_8

    move v3, v1

    goto :goto_4

    :cond_8
    const/16 v3, 0x8

    .line 403
    :goto_4
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 408
    :cond_a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->mResetButton:Landroid/view/View;

    if-eqz p0, :cond_b

    .line 409
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    return v4
.end method
