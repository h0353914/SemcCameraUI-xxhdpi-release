.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;
.source "ImageQualityControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;
    }
.end annotation


# static fields
.field public static final KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSliderPressed:Z

.field private final mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

.field private mOrientation:I

.field private mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field private final mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

.field private final mValueAccessor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "+",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

.field private final mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 57
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sonyericsson/android/camera/setting/UiControlSettings;",
            "Landroid/graphics/Rect;",
            "Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Iso;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Ev;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;)V

    .line 65
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    const/4 p5, 0x0

    .line 68
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mIsSliderPressed:Z

    .line 70
    new-instance p5, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$1;

    invoke-direct {p5, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)V

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    const/4 p5, 0x2

    .line 125
    iput p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mOrientation:I

    .line 139
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    .line 140
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    .line 141
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;

    .line 147
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->create()Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mIsSliderPressed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mIsSliderPressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->createAdapter(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->applyValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method private applyValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 1

    .line 237
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    .line 238
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    .line 239
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private createAdapter(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .locals 6

    .line 205
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    move-object v3, p1

    check-cast v3, Lcom/sonyericsson/android/camera/CameraActivity;

    .line 207
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;Z)V

    .line 209
    sget-object p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->KEYS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 211
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 213
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    .line 215
    array-length v3, v3

    if-le v3, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 218
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    .line 220
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    .line 221
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    const-string v4, ""

    .line 222
    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 223
    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    .line 225
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->generateValueItems(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 226
    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->item(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    goto :goto_2

    .line 229
    :cond_3
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private generateValueItems(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 248
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 250
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v1, v5

    if-eqz v6, :cond_3

    if-ne v2, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v4

    .line 253
    :goto_1
    sget-object v8, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 254
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v9

    if-nez v9, :cond_2

    .line 255
    sget-object v8, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 259
    :cond_2
    invoke-static {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 260
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 261
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v6

    invoke-virtual {v9, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    new-instance v9, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$2;

    invoke-direct {v9, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$2;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)V

    .line 262
    invoke-virtual {v6, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 269
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 270
    invoke-virtual {v6, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 272
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 2

    .line 175
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 178
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "Re-create view because setting structure is modified."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->create()Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    .line 180
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mValueAccessor:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Fail to fetch setting structure."

    .line 181
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setSensorOrientation(I)V

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->setLastImageQualityControlTab(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Z)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->save()V

    .line 159
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->disable()V

    return-void
.end method

.method public enable()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->getLastImageQualityControlTab(Z)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 153
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->enable()V

    return-void
.end method

.method protected onOrientationChanged(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mOrientation:I

    .line 201
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setSensorOrientation(I)V

    return-void
.end method

.method protected onVisibilityUpdated()V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    .line 192
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setVisibility(I)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->onVisibilityUpdated()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 171
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
