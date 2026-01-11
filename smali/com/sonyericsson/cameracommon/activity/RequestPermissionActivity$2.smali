.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionDialog(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 581
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->-$$Nest$fgetmCurrentPermissionState(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestPermissionList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->-$$Nest$mrequestPermissions(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;[Ljava/lang/String;)V

    .line 582
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->-$$Nest$fputmCurrentShownDialog(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/app/AlertDialog;)V

    return-void
.end method
