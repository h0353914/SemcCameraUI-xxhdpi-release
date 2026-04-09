.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionRunnable"
.end annotation


# instance fields
.field private mUserSettingKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 0

    .line 1778
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1779
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->mUserSettingKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1784
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isMenuAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1785
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->mUserSettingKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1786
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->mUserSettingKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1808
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto :goto_1

    .line 1804
    :pswitch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESET_CONFIRMATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1796
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/HelpGuide;->isHelpAppAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/HelpGuide;->startHelpApp(Landroid/content/Context;)V

    goto :goto_0

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/HelpGuide;->startOnlineHelp(Landroid/content/Context;)V

    .line 1801
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearExtraOperation()V

    goto :goto_1

    .line 1791
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->mUserSettingKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    goto :goto_1

    .line 1811
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ActionRunnable;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
