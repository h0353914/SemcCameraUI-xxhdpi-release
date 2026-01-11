.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageDialogOnClickPositiveListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 9754
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 4

    .line 9757
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9796
    :pswitch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchWifiSetting(Lcom/sonyericsson/android/camera/CameraActivity;)V

    goto :goto_0

    .line 9786
    :pswitch_1
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/content/Intent;

    .line 9787
    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    aget-object p1, p1, v1

    check-cast p1, Landroid/os/Bundle;

    .line 9789
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mrequestStartActivityForMessageDialog(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 9792
    :pswitch_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_WIFI_RESULT:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9772
    :pswitch_3
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/content/Intent;

    .line 9773
    iget-object v2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    aget-object v1, v2, v1

    check-cast v1, Landroid/os/Bundle;

    .line 9774
    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object p1, p1, v2

    check-cast p1, Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    .line 9776
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 9778
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mrequestStartActivityForMessageDialog(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 9759
    :pswitch_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 9760
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mlaunchLocationSourceSettings(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_0

    .line 9782
    :pswitch_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mshowHiSpeedSdCardRecommendDialogOnVideoSizeChange(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_0

    .line 9768
    :pswitch_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mopenUserSelectMenu(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
