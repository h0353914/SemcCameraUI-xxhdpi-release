.class public abstract Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
.super Ljava/lang/Object;
.source "SettingDialogItem.java"


# instance fields
.field private mItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->mItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    return-void
.end method


# virtual methods
.method protected changeDrawableState(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;
    .locals 0

    .line 63
    new-instance p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/DrawableStateChanger;-><init>(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    return-object p0
.end method

.method public getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->mItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    return-object p0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public select(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .locals 0

    .line 39
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->select()V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    return-void
.end method

.method public setItem(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->mItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    return-void
.end method

.method public abstract update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
.end method
