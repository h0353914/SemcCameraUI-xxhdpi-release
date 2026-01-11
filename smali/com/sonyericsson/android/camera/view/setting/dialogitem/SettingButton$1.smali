.class Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;
.super Ljava/lang/Object;
.source "SettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 46
    sget-object p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$2;->$SwitchMap$com$sonyericsson$android$camera$view$setting$settingitem$SettingItem$Selectability:[I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getSelectability()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->select(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->select(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    :cond_2
    :goto_0
    return-void
.end method
