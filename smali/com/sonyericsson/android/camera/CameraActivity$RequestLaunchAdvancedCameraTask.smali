.class Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestLaunchAdvancedCameraTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestLaunchAdvancedCameraTask"


# instance fields
.field private final mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

.field private final mRequestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private final mUserSettingKeyName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;Ljava/lang/String;)V
    .locals 0

    .line 2290
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2291
    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->mRequestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 2292
    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    .line 2293
    iput-object p4, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->mUserSettingKeyName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0

    .line 2282
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3900(Lcom/sonyericsson/android/camera/CameraActivity;Z)V

    .line 2302
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2304
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 2306
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.sonyericsson.android.camera.extra.launchedByFastCapturing"

    const/4 v3, 0x1

    .line 2307
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2309
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation:[I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen"

    .line 2311
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogkey"

    .line 2314
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->mUserSettingKeyName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2323
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->mRequestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2346
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2343
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_1
    const-string v2, "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA"

    .line 2340
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_2
    const-string v2, "android.media.action.VIDEO_CAMERA"

    .line 2337
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_3
    const-string v2, "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

    .line 2334
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2331
    :pswitch_4
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2328
    :pswitch_5
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2325
    :pswitch_6
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2350
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 2351
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2355
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v2, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 2357
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 2360
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2362
    :catch_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, ".onClick():[activity is not found error]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2368
    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
