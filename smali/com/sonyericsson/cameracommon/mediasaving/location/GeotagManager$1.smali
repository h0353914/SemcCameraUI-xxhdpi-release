.class Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;
.super Ljava/lang/Object;
.source "GeotagManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field final synthetic val$activity:Lcom/sonyericsson/android/camera/CameraActivity;

.field final synthetic val$viewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->val$activity:Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->val$viewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionChecked([Ljava/lang/String;)Z
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->val$activity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->val$activity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->access$000(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->val$viewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    if-eqz p1, :cond_0

    .line 422
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->val$viewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
