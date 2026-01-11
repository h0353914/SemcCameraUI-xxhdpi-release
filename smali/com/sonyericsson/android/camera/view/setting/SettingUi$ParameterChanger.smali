.class Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParameterChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)V

    return-void
.end method


# virtual methods
.method public changeValue(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->-$$Nest$fgetmSetting(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-ne v0, v1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    .line 113
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ParameterChanger#changeValue() Key : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 117
    :cond_1
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_BLACK_SCREEN:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger$1;

    invoke-direct {v5, p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger$1;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    const-wide/16 v6, 0x14

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 126
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->-$$Nest$fgetmSetting(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 129
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->-$$Nest$fgetmSetting(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 131
    sget-object v5, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v2, v5, v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    goto :goto_1

    .line 138
    :cond_3
    move-object v2, v0

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 140
    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 141
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-nez v1, :cond_4

    .line 142
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    .line 156
    :cond_4
    :goto_1
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSettingsCommon(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 157
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0, v0, p1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method
