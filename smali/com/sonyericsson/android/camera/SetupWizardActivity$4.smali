.class Lcom/sonyericsson/android/camera/SetupWizardActivity$4;
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

    .line 237
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$800(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)I

    move-result p1

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$900(Lcom/sonyericsson/android/camera/SetupWizardActivity;)I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$902(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)I

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1000(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "change to PORTRAIT."

    .line 245
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1100(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "change to LANDSCAPE."

    .line 247
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1100(Ljava/lang/String;)V

    .line 250
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->setSensorOrientation(I)V

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 259
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$1300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    :cond_4
    return-void
.end method
