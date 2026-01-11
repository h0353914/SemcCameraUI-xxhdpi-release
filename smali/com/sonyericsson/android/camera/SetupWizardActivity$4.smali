.class Lcom/sonyericsson/android/camera/SetupWizardActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "SetupWizardActivity.java"


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

    .line 194
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setShowWhenLocked(Z)V

    .line 198
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setTurnScreenOn(Z)V

    return-void
.end method
