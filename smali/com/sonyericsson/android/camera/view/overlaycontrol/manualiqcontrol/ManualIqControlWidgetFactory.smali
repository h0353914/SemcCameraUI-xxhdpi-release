.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;
.super Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;
.source "ManualIqControlWidgetFactory.java"


# instance fields
.field private mIntValueAccessor:Ljava/util/Map;
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

.field private final mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    .line 26
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;->mIntValueAccessor:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public create(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Landroid/view/ViewGroup;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
    .locals 3

    .line 33
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 36
    sget-object v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 p0, 0x5

    if-ne v1, p0, :cond_0

    .line 46
    new-instance p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object p0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ManualIqControlWidgetFactory#create() The UserSettingKey is unknown. key:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/IsoSlider;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    invoke-direct {v0, p2, p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/IsoSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V

    return-object v0

    .line 42
    :cond_2
    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;->mIntValueAccessor:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    invoke-direct {v1, p2, p1, v2, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V

    return-object v1

    .line 40
    :cond_3
    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ShutterSpeedSlider;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    invoke-direct {v0, p2, p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ShutterSpeedSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V

    return-object v0

    .line 38
    :cond_4
    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/EvSlider;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    invoke-direct {v0, p2, p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/EvSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V

    return-object v0
.end method
