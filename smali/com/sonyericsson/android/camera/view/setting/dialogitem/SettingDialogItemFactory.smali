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
.method public create(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Landroid/view/ViewGroup;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
    .locals 1

    .line 29
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 31
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 45
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object p2

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The specified type is unknown. type:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_1
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object p2

    .line 39
    :cond_2
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object p2

    .line 36
    :cond_3
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object p2

    .line 33
    :cond_4
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object p2
.end method

.method public getDialogItemTypeCount()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method
