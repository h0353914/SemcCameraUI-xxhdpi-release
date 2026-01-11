.class Lcom/sonyericsson/android/camera/CameraActivity$12;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;

.field final synthetic val$callback:Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3529
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->val$callback:Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 3537
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "RequestPermissionActivity requestCode="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", result="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/16 p3, 0xc

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 3545
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->val$permissions:[Ljava/lang/String;

    .line 3546
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3547
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 3549
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmIsSetupCompleted(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3550
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$msetup(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 3562
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->val$callback:Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;

    if-eqz p1, :cond_3

    .line 3563
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->val$permissions:[Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;->onPermissionChecked([Ljava/lang/String;)Z

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
