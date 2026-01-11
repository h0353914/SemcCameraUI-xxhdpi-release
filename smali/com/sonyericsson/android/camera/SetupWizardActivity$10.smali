.class Lcom/sonyericsson/android/camera/SetupWizardActivity$10;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 628
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 631
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 632
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$mclose(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_0

    .line 634
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 636
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fputmOptionalRuntimePermissionDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V

    return-void
.end method
