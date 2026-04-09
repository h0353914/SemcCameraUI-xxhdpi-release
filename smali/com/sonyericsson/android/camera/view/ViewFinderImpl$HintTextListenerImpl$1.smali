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

.field final synthetic val$content:Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;

.field final synthetic val$controller:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

.field final synthetic val$tutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V
    .locals 0

    .line 8966
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->val$controller:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->val$content:Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->val$tutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCloseButton(Landroid/view/View;)V
    .locals 1

    .line 8970
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900e7

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900eb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 8978
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->SKIP:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 8979
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 8980
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    goto :goto_0

    .line 8972
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->GOT_IT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    .line 8973
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 8974
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 8987
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->val$controller:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->val$content:Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancel(Ljava/lang/String;)Z

    .line 8988
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->val$tutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 8990
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8991
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showAll()Z

    .line 8993
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 8994
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
