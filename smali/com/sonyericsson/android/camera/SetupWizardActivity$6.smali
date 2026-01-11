.class Lcom/sonyericsson/android/camera/SetupWizardActivity$6;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 261
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 2

    .line 264
    const-string v0, "onWindowAttached() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$msetupLayout(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmMessageDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmOrientation(Lcom/sonyericsson/android/camera/SetupWizardActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->setSensorOrientation(I)V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmOrientation(Lcom/sonyericsson/android/camera/SetupWizardActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 271
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    .line 272
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->create(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    move-result-object v0

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0, v0, v1, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z

    .line 276
    const-string p0, "onWindowAttached() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowDetached()V
    .locals 0

    .line 281
    const-string p0, "onWindowDetached() E"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 283
    const-string p0, "onWindowDetached() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method
