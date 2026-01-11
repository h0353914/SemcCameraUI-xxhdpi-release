.class Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$1;
.super Ljava/lang/Object;
.source "CameraSettingsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->-$$Nest$fgetmCameraSettingItem(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 50
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 51
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->-$$Nest$fgetmOnItemSelectedListener(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->-$$Nest$fgetmOnItemSelectedListener(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;

    move-result-object p2

    .line 53
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    .line 53
    invoke-interface {p2, v0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;->onItemSelected(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method
