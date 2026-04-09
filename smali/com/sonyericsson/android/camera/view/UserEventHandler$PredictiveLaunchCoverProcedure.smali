.class Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PredictiveLaunchCoverProcedure"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 1

    .line 1258
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .locals 0

    .line 1258
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method


# virtual methods
.method doTouchUp(Landroid/graphics/Point;)V
    .locals 1

    .line 1262
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    .line 1263
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->doCapture()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1264
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 1265
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeAutoReviewIfShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1269
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$2200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1273
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeSettingDialogIfOpened()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1274
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1275
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1278
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3900(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 1282
    :cond_3
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 1283
    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1284
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    .line 1285
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4000(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    .line 1287
    :cond_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    :goto_1
    return-void
.end method
