.class public interface abstract Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
.super Ljava/lang/Object;
.source "SettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;
    }
.end annotation


# virtual methods
.method public abstract compareData(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Z
.end method

.method public abstract compareData(Ljava/lang/Object;)Z
.end method

.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract getDialogItemType()I
.end method

.method public abstract getIconId()I
.end method

.method public abstract getSelectability()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;
.end method

.method public abstract getSubText(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract getText(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract isSelectable()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract isSoundEnabled()Z
.end method

.method public abstract select()V
.end method

.method public abstract setSelectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)V
.end method

.method public abstract setSelected(Z)V
.end method
