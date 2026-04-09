.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory;
.super Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;
.source "ImageQualityWidgetFactory.java"


# instance fields
.field private mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field private final mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    .line 24
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method


# virtual methods
.method public create(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Landroid/view/ViewGroup;Z)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
    .locals 2

    .line 32
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 33
    move-object p3, p1

    check-cast p3, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ImageQualityWidgetFactory#create() The UserSettingKey is unknown. key:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :pswitch_0
    new-instance p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object p0

    .line 43
    :pswitch_1
    new-instance p3, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/IsoSlider;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    invoke-direct {p3, p2, p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/IsoSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;)V

    return-object p3

    .line 41
    :pswitch_2
    new-instance p3, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-direct {p3, p2, p1, v0, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/FocusRangeSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    return-object p3

    .line 39
    :pswitch_3
    new-instance p3, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ShutterSpeedSlider;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    invoke-direct {p3, p2, p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ShutterSpeedSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;)V

    return-object p3

    .line 37
    :pswitch_4
    new-instance p3, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/EvSlider;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityWidgetFactory;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    invoke-direct {p3, p2, p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/EvSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
