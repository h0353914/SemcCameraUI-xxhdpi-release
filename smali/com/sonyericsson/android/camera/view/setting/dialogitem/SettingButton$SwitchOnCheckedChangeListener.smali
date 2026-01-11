.class final Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;
.super Ljava/lang/Object;
.source "SettingButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchOnCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;-><init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelectable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->-$$Nest$fgetmHolder(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;->mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setChecked(Z)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 76
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->-$$Nest$mgetOnItem(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->select(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->-$$Nest$mgetOffItem(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->select(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    .line 80
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;->-$$Nest$mupdateContentDescription(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;Z)V

    :cond_2
    return-void
.end method
