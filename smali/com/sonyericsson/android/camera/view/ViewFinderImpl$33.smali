.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$33;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 10446
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$33;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doPostProcessing(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;)V"
        }
    .end annotation

    .line 10449
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$33;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 10450
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 10451
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getMessageTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 10452
    invoke-interface {v0, v3, v2}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->setNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;Z)V

    .line 10453
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->save()V

    goto :goto_0

    .line 10456
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$33;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$msetApplicationNavigatorEnabled(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 10457
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$33;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAccepted(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
    .locals 1

    .line 10462
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 10464
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$33;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onClose(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;)V"
        }
    .end annotation

    .line 10486
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION_MORE_OPTIONS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 10487
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10489
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10490
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$33;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mupdateHighSensitivityFusionModeForManual(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_1

    .line 10488
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$33;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showHiSpeedSdCardRecommendDialogOnModeChange()V

    .line 10492
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$33;->doPostProcessing(Ljava/util/List;)V

    return-void
.end method

.method public onDenied(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
    .locals 1

    .line 10474
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 10476
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$33;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
