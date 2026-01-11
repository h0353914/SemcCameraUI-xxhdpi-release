.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->onClickSlowMotionDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

.field final synthetic val$tutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10162
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->val$tutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCloseButton(Landroid/view/View;)V
    .locals 1

    .line 10166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090134

    if-eq p1, v0, :cond_1

    const v0, 0x7f090138

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 10174
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->SKIP:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 10175
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 10176
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    goto :goto_0

    .line 10168
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->GOT_IT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 10169
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 10170
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 10183
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->val$tutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 10185
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mshowAllHintText(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 10186
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$msetApplicationNavigatorEnabled(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 10187
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
