.class Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger$1;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->changeValue(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;

.field final synthetic val$value:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger$1;->this$1:Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger$1;->val$value:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger$1;->this$1:Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->-$$Nest$fgetmSetting(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger$1;->val$value:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method
