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

    .line 8535
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 6

    .line 8538
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 8599
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 8600
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8599
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolumeUuid(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 8601
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    const/16 v0, 0x14

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->requestSdCardGranted(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 8593
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestRestartCameraActivityAfterResetSettings()V

    goto/16 :goto_0

    .line 8589
    :pswitch_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto/16 :goto_0

    .line 8584
    :pswitch_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    .line 8585
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->updateSettingMenu(Z)V

    goto :goto_0

    .line 8554
    :pswitch_4
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Landroid/content/Intent;

    .line 8555
    iget-object v2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Landroid/os/Bundle;

    .line 8556
    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object p1, p1, v4

    check-cast p1, Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    .line 8558
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v4, v5, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 8560
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 8541
    :pswitch_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 8542
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_0

    .line 8579
    :pswitch_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_0

    .line 8564
    :pswitch_7
    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 8566
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    .line 8567
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->requestLaunchAdvancedCamera(Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;Ljava/lang/String;)V

    goto :goto_0

    .line 8571
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestLaunchAdvancedCamera(Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;Ljava/lang/String;)V

    goto :goto_0

    .line 8550
    :pswitch_8
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
