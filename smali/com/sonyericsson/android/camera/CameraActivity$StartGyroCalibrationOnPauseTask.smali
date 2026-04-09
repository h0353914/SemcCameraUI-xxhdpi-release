.class final Lcom/sonyericsson/android/camera/CameraActivity$StartGyroCalibrationOnPauseTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartGyroCalibrationOnPauseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 2801
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$StartGyroCalibrationOnPauseTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0

    .line 2801
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$StartGyroCalibrationOnPauseTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.cameracommon.action.REQUEST_SOMC_CAMERA_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonymobile.cameracommon"

    .line 2806
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 2807
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;->GYRO_CALIBRATION:Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    iget v2, v2, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;->mExtraValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2809
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$StartGyroCalibrationOnPauseTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
