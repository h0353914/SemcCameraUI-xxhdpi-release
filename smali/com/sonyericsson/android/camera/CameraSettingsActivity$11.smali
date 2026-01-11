.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

.field final synthetic val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field final synthetic val$value:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 658
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;->val$value:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;->val$value:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$monSettingValueChanged(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method
