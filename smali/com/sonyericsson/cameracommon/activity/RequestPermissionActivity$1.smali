.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;
.super Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
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

    .line 236
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setShowWhenLocked(Z)V

    .line 240
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setTurnScreenOn(Z)V

    return-void
.end method
