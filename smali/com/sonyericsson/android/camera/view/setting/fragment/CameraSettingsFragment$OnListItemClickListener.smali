.class public interface abstract Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;
.super Ljava/lang/Object;
.source "CameraSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnListItemClickListener"
.end annotation


# virtual methods
.method public abstract getLatestItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
.end method
