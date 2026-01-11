.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;
.source "ManualIqControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;
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

.field private final mIntValueAccessor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

.field private mOnTabAvailableListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;

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

.field private mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

.field private final mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSelectedTab(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValueAccessor(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyValue(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->applyValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateAdapter(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->createAdapter(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sonyericsson/android/camera/setting/UiControlSettings;",
            "Landroid/graphics/Rect;",
            "Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;",
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
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;)V

    .line 66
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mIntValueAccessor:Ljava/util/Map;

    .line 71
    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    const/4 v1, 0x2

    .line 119
    iput v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOrientation:I

    .line 137
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    .line 138
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOnTabAvailableListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;

    .line 139
    iput-object p7, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    .line 140
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p5, p2, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p5, p2, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p5, p2, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p5, p2, p11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p5, p2, p12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p2, p13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    .line 147
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->create()Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    return-void
.end method

.method private applyValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 1

    .line 247
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    .line 248
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    .line 249
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private createAdapter(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .locals 5

    .line 217
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mIntValueAccessor:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;Ljava/util/Map;)V

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;)V

    .line 219
    sget-object p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->KEYS:Ljava/util/List;

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

    .line 221
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 223
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 225
    array-length v2, v2

    if-le v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v4, v2

    .line 228
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 230
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    .line 231
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const-string v3, ""

    .line 232
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 233
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    .line 235
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->generateValueItems(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 236
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->item(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    goto :goto_2

    .line 239
    :cond_3
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

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

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 258
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 260
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

    .line 263
    :goto_1
    sget-object v8, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 264
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v9

    if-nez v9, :cond_2

    .line 265
    sget-object v8, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 269
    :cond_2
    invoke-static {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 270
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 271
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v6

    invoke-virtual {v9, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    new-instance v9, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;

    invoke-direct {v9, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)V

    .line 272
    invoke-virtual {v6, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 281
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 282
    invoke-virtual {v6, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 284
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
    .locals 3

    .line 187
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOnTabAvailableListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 190
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "Re-create view because setting structure is modified."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->create()Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOnTabAvailableListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-virtual {p1, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 193
    const-string p1, "Fail to fetch setting structure."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setSensorOrientation(I)V

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->setLastManualIqControlTab(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Z)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->save()V

    .line 163
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->disable()V

    return-void
.end method

.method public enable()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->getLastManualIqControlTab(Z)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 157
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->enable()V

    return-void
.end method

.method public getView()Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    return-object p0
.end method

.method protected onOrientationChanged(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOrientation:I

    .line 213
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setSensorOrientation(I)V

    return-void
.end method

.method protected onVisibilityUpdated()V
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    .line 204
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setVisibility(I)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->onVisibilityUpdated()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 183
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setGray(Z)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setGray(Z)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setTouchable(Z)V

    return-void
.end method
