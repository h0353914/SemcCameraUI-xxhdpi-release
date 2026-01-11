.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "CameraSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 0

    return-void
.end method

.method public onDismissError()V
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$fgetmLastClickedCameraSettingItem(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$fgetmLastClickedCameraSettingItem(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    :cond_0
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$fgetmLastClickedCameraSettingItem(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$fgetmLastClickedCameraSettingItem(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    :cond_0
    return-void
.end method
