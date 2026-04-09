.class Lcom/sonyericsson/android/camera/CameraActivity$5;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
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

    .line 608
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$5;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestLocationChange(Z)V
    .locals 5

    .line 646
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 647
    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLocationChange: enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 651
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$5;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setIsGeotagPermissionGranted(Z)V

    .line 654
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$5;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    .line 655
    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {p0, p1, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->setNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;Z)V

    .line 656
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->save()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    const/4 p1, -0x1

    const/4 v0, 0x1

    if-eq p2, p1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 633
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$5;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_1

    :cond_1
    const-string p1, "geo_tag_result"

    const/4 p2, 0x0

    .line 613
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "side_sense_result"

    .line 615
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 618
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$5;->requestLocationChange(Z)V

    .line 619
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    .line 621
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 623
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$5;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraSettings()Lcom/sonyericsson/android/camera/setting/ExtraSettings;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$5;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 627
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 626
    invoke-virtual {p2, p0, p1}, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/util/List;)V

    :goto_1
    return v0
.end method
