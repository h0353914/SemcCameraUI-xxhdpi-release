.class Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonochromeExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mIsMostRecentlyUsed:Z

.field mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;ZLcom/sonyericsson/android/camera/view/modeselector/Mode;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 431
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mIsMostRecentlyUsed:Z

    .line 435
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mIsMostRecentlyUsed:Z

    .line 436
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;ZLcom/sonyericsson/android/camera/view/modeselector/Mode;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V
    .locals 0

    .line 430
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;ZLcom/sonyericsson/android/camera/view/modeselector/Mode;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "TT;>;)V"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 443
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mIsMostRecentlyUsed:Z

    if-eqz v0, :cond_0

    .line 444
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 446
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    goto :goto_0

    .line 449
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 451
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 454
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 455
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$controller$launcher$ApplicationLauncher$MonochromeType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/16 v1, 0x11

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 470
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 471
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 475
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {p1, v0, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V

    .line 477
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    .line 478
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$1000(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 477
    invoke-static {p1, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    goto :goto_1

    .line 457
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 458
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 462
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {p1, v0, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V

    .line 464
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    .line 465
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$1000(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 464
    invoke-static {p1, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 486
    :goto_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$600(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
