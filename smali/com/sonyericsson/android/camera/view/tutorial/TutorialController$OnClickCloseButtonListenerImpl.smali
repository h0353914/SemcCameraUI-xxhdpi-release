.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;
.super Ljava/lang/Object;
.source "TutorialController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickCloseButtonListenerImpl"
.end annotation


# instance fields
.field private final mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    return-void
.end method


# virtual methods
.method public onClickCloseButton(Landroid/view/View;)V
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getCurrentTutorialPageInfo()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0900e7

    if-eq p1, v1, :cond_5

    const v1, 0x7f0900eb

    if-eq p1, v1, :cond_4

    const v1, 0x7f0901a4

    if-eq p1, v1, :cond_3

    const v1, 0x7f0901ac

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    .line 698
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->YES:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 699
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 700
    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$4;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    .line 706
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)V

    .line 710
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 711
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;->onAccepted(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)V

    .line 712
    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    if-eq v0, p1, :cond_7

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 713
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;->onClose(Ljava/util/List;)V

    goto/16 :goto_0

    .line 719
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->NO:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 720
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 721
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)V

    .line 722
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 723
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;->onDenied(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)V

    .line 724
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 725
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;->onClose(Ljava/util/List;)V

    goto/16 :goto_0

    .line 749
    :cond_4
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->SKIP:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 750
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 751
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 752
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 753
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;->onClose(Ljava/util/List;)V

    goto :goto_0

    .line 731
    :cond_5
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->GOT_IT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 732
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 733
    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$4;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    .line 740
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)V

    .line 741
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 742
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->mTutorialContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getTutorialTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;->onClose(Ljava/util/List;)V

    goto :goto_0

    .line 735
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 736
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickCloseButtonListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;->onAccepted(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)V

    :cond_7
    :goto_0
    return-void
.end method
