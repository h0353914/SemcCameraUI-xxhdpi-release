.class public Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;
.super Ljava/lang/Object;
.source "SettingDialogItemFactory.java"


# static fields
.field public static final BUTTON:I = 0x1

.field public static final BUTTON_DETAILS:I = 0x5

.field public static final CATEGORY_BUTTON:I = 0x3

.field public static final CATEGORY_SWITCH:I = 0x4

.field public static final END_OF_TYPE_LIST:I = 0x6

.field public static final VALUE_BUTTON:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Landroid/view/ViewGroup;Z)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
    .locals 0

    .line 30
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 32
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The specified type is unknown. type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :pswitch_0
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object p2

    .line 43
    :pswitch_1
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {p2, p0, p1, p3}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Z)V

    return-object p2

    .line 40
    :pswitch_2
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {p2, p0, p1, p3}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Z)V

    return-object p2

    .line 37
    :pswitch_3
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {p2, p0, p1, p3}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Z)V

    return-object p2

    .line 34
    :pswitch_4
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {p2, p0, p1, p3}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Z)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDialogItemTypeCount()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method
