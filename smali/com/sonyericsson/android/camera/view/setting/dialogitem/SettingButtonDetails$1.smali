.class Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails$1;
.super Ljava/lang/Object;
.source "SettingButtonDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;->select(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    :cond_0
    return-void
.end method
