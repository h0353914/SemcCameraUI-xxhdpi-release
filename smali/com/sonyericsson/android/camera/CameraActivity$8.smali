.class Lcom/sonyericsson/android/camera/CameraActivity$8;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraActivity;->doResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 1527
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$8;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1530
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$8;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const-class v2, Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1531
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$8;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/16 v2, 0xf

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmSetupWizardResultListener(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    .line 1533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$8;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    .line 1534
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$8;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$munregisterScreenOffReceiver(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method
