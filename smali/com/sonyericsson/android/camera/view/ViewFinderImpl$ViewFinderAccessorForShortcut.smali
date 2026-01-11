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

    .line 12066
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBokehEnabled()Z
    .locals 1

    .line 12119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isBokehEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isBokehOn()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isShortcutButtonClickable()Z
    .locals 1

    .line 12071
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmIsSettingChangeAcceptable(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 12072
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

    .line 12088
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public openShorcutDialog(Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V
    .locals 1

    .line 12081
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public showNightModeRejectedMessage()V
    .locals 0

    .line 12126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mshowNightModeRejectedMessage(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method

.method public showRestrictMessageDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 1

    .line 12097
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    .line 12098
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getRestrictMessageDialogId(Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 12097
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void
.end method

.method public switchBokehAvailability()V
    .locals 0

    .line 12112
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->switchBokehAvailability()V

    return-void
.end method

.method public switchSemiAutoAvailability()V
    .locals 0

    .line 12105
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->switchSemiAutoAvailability()V

    return-void
.end method
