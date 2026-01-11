.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$3;
.super Ljava/lang/Object;
.source "SettingItemSlider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;ZZLcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$3;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$3;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->onAutoCheckedChanged(Z)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
