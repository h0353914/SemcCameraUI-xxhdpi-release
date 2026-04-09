.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnHighSensitivityFusionButtonStateListener;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnHighSensitivityFusionButtonStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 5522
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnHighSensitivityFusionButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .locals 0

    .line 5522
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnHighSensitivityFusionButtonStateListener;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onDown(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onLongPress(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)V
    .locals 0

    return-void
.end method

.method public onMove(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onUp(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    .line 5530
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnHighSensitivityFusionButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnHighSensitivityFusionButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 5531
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnHighSensitivityFusionButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 5538
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnHighSensitivityFusionButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    .line 5540
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnHighSensitivityFusionButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_MANUAL_FUSION_SETTING:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->openTutorial(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5541
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnHighSensitivityFusionButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5543
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnHighSensitivityFusionButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    :goto_0
    return-void

    .line 5532
    :cond_2
    :goto_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "HighSensitivityFusion button was tapped in mode change"

    .line 5533
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method
