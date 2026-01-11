.class Lcom/sonyericsson/android/camera/SetupWizardActivity$8;
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

    .line 588
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 594
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$misRestrictedMode(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$misSecure(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 595
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$mdismissKeyguard(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    .line 599
    :cond_0
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "package:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    .line 600
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 602
    :try_start_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 604
    const-string/jumbo p2, "showOptionalRuntimePermissionDialog() launchApplicationSettings: failed."

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 608
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->-$$Nest$fputmOptionalRuntimePermissionDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V

    return-void
.end method
