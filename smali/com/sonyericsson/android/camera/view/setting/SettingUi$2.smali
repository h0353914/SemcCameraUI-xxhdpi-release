.class Lcom/sonyericsson/android/camera/view/setting/SettingUi$2;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateSettingItemExecutor(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
        "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

.field final synthetic val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$2;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$2;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;)V"
        }
    .end annotation

    .line 707
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$2;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$2;->val$key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$2;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getRestrictMessageDialogId(Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void
.end method
