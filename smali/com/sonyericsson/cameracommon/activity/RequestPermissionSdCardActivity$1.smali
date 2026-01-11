.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;
.super Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
.source "RequestPermissionSdCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->setShowWhenLocked(Z)V

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->setTurnScreenOn(Z)V

    return-void
.end method
