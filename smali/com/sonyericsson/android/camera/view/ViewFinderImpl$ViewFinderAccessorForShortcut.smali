.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFinderAccessorForShortcut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 10166
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShortcutButtonClickable()Z
    .locals 1

    .line 10171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 10172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public openSettingMenuDialog()V
    .locals 2

    .line 10209
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V
    .locals 3

    .line 10202
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 1

    .line 10218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 10219
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getRestrictMessageDialogId(Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 10218
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void
.end method

.method public switchCamera()V
    .locals 2

    .line 10179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 10181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideAutoReview()V

    .line 10183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsCameraSwitching(Z)V

    .line 10184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideSurface()V

    .line 10186
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public switchSemiAutoAvailability()V
    .locals 0

    .line 10226
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->switchSemiAutoAvailability()V

    return-void
.end method
