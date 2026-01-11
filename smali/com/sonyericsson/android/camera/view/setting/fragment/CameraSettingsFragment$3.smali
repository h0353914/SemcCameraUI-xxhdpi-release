.class Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$3;
.super Ljava/lang/Object;
.source "CameraSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$3;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$3;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->-$$Nest$fgetmAdapter(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$3;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->-$$Nest$fgetmAdapter(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->getSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$3;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->-$$Nest$fgetmOnListItemClickListener(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$3;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->-$$Nest$fgetmOnListItemClickListener(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;->onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    :cond_1
    return-void
.end method
