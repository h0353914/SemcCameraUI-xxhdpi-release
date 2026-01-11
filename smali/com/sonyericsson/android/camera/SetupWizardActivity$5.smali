.class Lcom/sonyericsson/android/camera/SetupWizardActivity$5;
.super Landroid/view/OrientationEventListener;
.source "SetupWizardActivity.java"


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
.method constructor <init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;Landroid/content/Context;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$mgetOrientation(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)I

    move-result p1

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmOrientation(Lcom/sonyericsson/android/camera/SetupWizardActivity;)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fputmOrientation(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$misPortrait(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "change to PORTRAIT."

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$smtrace(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    const-string v0, "change to LANDSCAPE."

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmMessageDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmMessageDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->setSensorOrientation(I)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmOptionalRuntimePermissionDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 246
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fgetmOptionalRuntimePermissionDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    :cond_3
    return-void
.end method
