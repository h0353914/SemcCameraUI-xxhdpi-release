.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageDialogOnDismissListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 8673
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .locals 0

    .line 8673
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 3

    .line 8676
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-eq v0, v1, :cond_0

    .line 8677
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->OTHER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 8679
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 8723
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAutoPowerOffTimeOutDuration(Z)V

    .line 8724
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    goto :goto_0

    .line 8698
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8691
    :pswitch_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_0

    .line 8683
    :pswitch_3
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 8684
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_0

    .line 8713
    :pswitch_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_0

    .line 8719
    :cond_1
    :pswitch_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8703
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnDismissListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
