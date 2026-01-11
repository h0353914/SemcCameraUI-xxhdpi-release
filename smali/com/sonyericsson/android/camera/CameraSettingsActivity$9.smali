.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

.field final synthetic val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 619
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 622
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$view$setting$settingitem$SettingLayoutType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 635
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v0, v1, :cond_0

    .line 636
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$mshowResetDataConfirmation(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    goto :goto_0

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ACCESSIBILITY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v0, v1, :cond_4

    .line 638
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$mshowAccessibilityCompliance(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    goto :goto_0

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$mshowDetail(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$mshowValueSelectDialog(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_0

    .line 624
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$mtoggleSwitch(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    :cond_4
    :goto_0
    return-void
.end method
