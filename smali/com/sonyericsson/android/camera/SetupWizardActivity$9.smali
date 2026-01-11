.class Lcom/sonyericsson/android/camera/SetupWizardActivity$9;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;->showOptionalRuntimePermissionDialog()V
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

    .line 614
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 618
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 619
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$mclose(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_0

    .line 621
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 623
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fputmOptionalRuntimePermissionDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V

    return-void
.end method
