.class Lcom/sonyericsson/android/camera/CameraActivity$11;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3501
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iput p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->val$requestCode:I

    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3504
    const-string v0, "CheckAndRequestSelfPermissionsTask run"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3505
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->val$requestCode:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$11;->val$permissions:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)Z

    return-void
.end method
