.class Lcom/sonyericsson/android/camera/SetupWizardActivity$2;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 2

    .line 156
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetSideSenseResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 168
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetupCompleted(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fputmIsGeotagEnabled(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 159
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$mclose(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    :goto_0
    return-void
.end method
