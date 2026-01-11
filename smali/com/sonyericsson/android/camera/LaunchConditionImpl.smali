.class public Lcom/sonyericsson/android/camera/LaunchConditionImpl;
.super Ljava/lang/Object;
.source "LaunchConditionImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/LaunchCondition;


# static fields
.field private static final CAMERA_LAUNCH_HDR_WITH_4K_RESOLUTION:Ljava/lang/String; = "HDR_WITH_4K_RESOLUTION"

.field private static final CAMERA_LAUNCH_MANUAL_MODE:Ljava/lang/String; = "MANUAL_MODE"

.field private static final CAMERA_LAUNCH_SLOW_MOTION:Ljava/lang/String; = "SLOW_MOTION"

.field private static final CAMERA_LAUNCH_SUPER_SLOW_MOTION:Ljava/lang/String; = "SUPER_SLOW_MOTION"

.field private static final EXTRA_CAMERA_MODE:Ljava/lang/String; = "com.google.assistant.extra.CAMERA_MODE"

.field private static final EXTRA_CAMERA_OPEN_ONLY:Ljava/lang/String; = "com.google.assistant.extra.CAMERA_OPEN_ONLY"

.field private static final EXTRA_LAUNCH_CAMERA_MODE:Ljava/lang/String; = "android.intent.extra.CAMERA_MODE"

.field private static final EXTRA_TIMER_DURATION_SECONDS:Ljava/lang/String; = "com.google.assistant.extra.TIMER_DURATION_SECONDS"

.field private static final EXTRA_USE_FRONT_CAMERA:Ljava/lang/String; = "com.google.assistant.extra.USE_FRONT_CAMERA"

.field private static final EXTRA_USE_FRONT_CAMERA_MODE:Ljava/lang/String; = "android.intent.extra.USE_FRONT_CAMERA"

.field private static final RESET_LAUNCH_MODE_TIME_LIMIT_MILLIS:I = 0x7530

.field private static final RESET_LAUNCH_TRIGGER_INTERVAL:I = 0x7d0


# instance fields
.field private mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field private mAddToMediaStore:Z

.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mCheckStartTimeInMillis:J

.field private mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

.field private mExtraOutput:Landroid/net/Uri;

.field private mGoogleAssistantSelfTimer:I

.field private mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field private mInternalModeValue:I

.field private mIsGoogleAssistantLaunchOnly:Z

.field private mIsLaunchedByActivityResult:Z

.field private mIsLaunchedByIntent:Z

.field private mIsRestarted:Z

.field private mIsSecurePhotoLaunchedByIntent:Z

.field private mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

.field private mLaunchInternlCallingCapturingModeValue:I

.field private mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field private mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

.field private mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

.field private mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field private final mVideoQualityConfigurations:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V
    .locals 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    .line 72
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 74
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 76
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsRestarted:Z

    .line 85
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->NONE_OR_DISMISSED:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 93
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 95
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 97
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    .line 99
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    const-wide/16 v1, 0x0

    .line 105
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCheckStartTimeInMillis:J

    const/4 v1, -0x1

    .line 107
    iput v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInternalModeValue:I

    .line 108
    iput v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchInternlCallingCapturingModeValue:I

    .line 114
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByIntent:Z

    .line 120
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByActivityResult:Z

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mVideoQualityConfigurations:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    return-void
.end method

.method private checkLaunchCameraModeFromGoogleAssistant(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 4

    .line 769
    const-string v0, "is_voice_interaction_root"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v1

    .line 772
    :goto_0
    const-string v0, "com.sonyericsson.android.camera.extra.launchTrigger"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_1

    .line 776
    :cond_1
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 777
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByCameraLongPress(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 778
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLiftTrigger(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 779
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 782
    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    .line 783
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    .line 787
    :cond_4
    :goto_1
    const-string v0, "com.google.assistant.extra.CAMERA_MODE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 788
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 790
    :cond_5
    const-string v0, "android.intent.extra.CAMERA_MODE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    :goto_2
    const-string v2, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "com.google.assistant.extra.USE_FRONT_CAMERA"

    .line 795
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 796
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string p2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_6

    .line 798
    :cond_6
    const-string p1, "HDR_WITH_4K_RESOLUTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 799
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 800
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->FOUR_K_HDR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    goto/16 :goto_6

    .line 802
    :cond_7
    const-string p1, "SLOW_MOTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 803
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 804
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    goto/16 :goto_6

    .line 805
    :cond_8
    const-string p1, "SUPER_SLOW_MOTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 806
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowMotionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 807
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 808
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    goto/16 :goto_6

    :cond_9
    if-eqz v2, :cond_12

    .line 811
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 812
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_6

    :cond_a
    if-eqz p3, :cond_f

    .line 818
    const-string p1, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 819
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 820
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setAssistSelfTimer(I)V

    const/4 p2, 0x3

    if-gt p1, p2, :cond_b

    :goto_3
    move p1, p2

    goto :goto_4

    :cond_b
    const/16 p2, 0x1e

    if-lt p1, p2, :cond_c

    goto :goto_3

    :cond_c
    :goto_4
    mul-int/lit16 p1, p1, 0x3e8

    .line 826
    iput p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    .line 827
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    goto :goto_5

    .line 828
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isGoogleAssistantLaunchOnly()Z

    move-result p1

    if-nez p1, :cond_e

    const/16 p1, 0xbb8

    .line 829
    iput p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    .line 831
    :cond_e
    :goto_5
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 832
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getGoogleAssistantSelfTimer()I

    move-result p2

    .line 831
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->setDurationInMillisecond(I)V

    .line 835
    :cond_f
    const-string p1, "MANUAL_MODE"

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 836
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 837
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_6

    .line 839
    :cond_10
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_6

    .line 842
    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 843
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    :cond_12
    :goto_6
    return-void
.end method

.method private clearLaunchTrigger()V
    .locals 2

    .line 659
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isTimeIntervalBeyondThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_0

    .line 660
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    :cond_0
    return-void
.end method

.method private getOneShotCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .line 714
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 716
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_1

    .line 719
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    :cond_1
    return-object p0
.end method

.method private isLaunchedByCameraLongPress(Landroid/content/Intent;)Z
    .locals 1

    .line 699
    const-string p0, "com.android.systemui.camera_launch_source"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 700
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->CAMERA_LONG_PRESS:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->ordinal()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLaunchedByLiftTrigger(Landroid/content/Intent;)Z
    .locals 1

    .line 709
    const-string p0, "com.android.systemui.camera_launch_source"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 710
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->ordinal()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLaunchedByLockScreen(Landroid/content/Intent;)Z
    .locals 1

    .line 645
    const-string p0, "com.android.systemui.camera_launch_source"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 646
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->LOCKSCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->ordinal()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z
    .locals 1

    .line 704
    const-string p0, "com.android.systemui.camera_launch_source"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 705
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->POWER_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;->ordinal()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isResetCapturingMode(Z)Z
    .locals 4

    if-nez p1, :cond_2

    .line 726
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByActivityResult:Z

    if-nez p1, :cond_2

    .line 727
    iget-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    if-nez p1, :cond_0

    .line 728
    new-instance p1, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 732
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string p1, "KEY_TIME_APP_PAUSED"

    const-wide/16 v0, 0x0

    .line 733
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readLong(Ljava/lang/String;J)J

    move-result-wide p0

    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_2

    cmp-long v0, v2, p0

    if-ltz v0, :cond_1

    sub-long/2addr v2, p0

    const-wide/16 p0, 0x7530

    cmp-long p0, v2, p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isTimeIntervalBeyondThreshold()Z
    .locals 4

    .line 858
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCheckStartTimeInMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAddToMediaStore(Z)V
    .locals 0

    .line 682
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mAddToMediaStore:Z

    return-void
.end method

.method private setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 753
    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-void
.end method

.method private setExtraOutput(Landroid/net/Uri;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    return-void
.end method

.method private setIsSecurePhotoLaunchedByIntent(Z)V
    .locals 0

    .line 678
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsSecurePhotoLaunchedByIntent:Z

    return-void
.end method

.method private setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-void
.end method

.method private setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    return-void
.end method

.method private setupLockMode(Landroid/content/Intent;)V
    .locals 3

    .line 686
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->NONE_OR_DISMISSED:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 687
    const-string v0, "com.sonyericsson.android.camera.extra.LOCK_MODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 688
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 689
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->values()[Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 690
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->values()[Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 692
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSecurePhotoLaunchedByIntent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 694
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    :cond_2
    :goto_0
    return-void
.end method

.method private updateCheckStartTime()V
    .locals 2

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCheckStartTimeInMillis:J

    return-void
.end method


# virtual methods
.method public clearExtraOperation()V
    .locals 1

    .line 212
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    return-void
.end method

.method public clearLaunchCameraMode()V
    .locals 1

    .line 217
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchCameraMode(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;)V

    return-void
.end method

.method public clearLaunchInternalCallingCapturingMode()V
    .locals 1

    const/4 v0, -0x1

    .line 242
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchInternlCallingCapturingModeValue:I

    return-void
.end method

.method public clearLaunchInternalMode()V
    .locals 1

    const/4 v0, -0x1

    .line 232
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInternalModeValue:I

    return-void
.end method

.method doRestart(ZZ)V
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByIntent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByActivityResult:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isResetCapturingMode(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 321
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_1
    return-void
.end method

.method public getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p0
.end method

.method public getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;
    .locals 2

    .line 200
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getExtraOperation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    return-object p0
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    return-object p0
.end method

.method public getGoogleAssistantSelfTimer()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    return p0
.end method

.method public getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchCameraMode:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    return-object p0
.end method

.method public getLaunchInternalCallingCapturingMode()I
    .locals 0

    .line 237
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchInternlCallingCapturingModeValue:I

    return p0
.end method

.method public getLaunchInternalMode()I
    .locals 0

    .line 227
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInternalModeValue:I

    return p0
.end method

.method getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    return-object p0
.end method

.method getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-object p0
.end method

.method public getStorageTypeForOneshot()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object p0
.end method

.method public getVideoQualityConfigurations()Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mVideoQualityConfigurations:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    return-object p0
.end method

.method isCorrectExtraOutputPath()Z
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 624
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    .line 626
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getOneShotStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 627
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v3, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    .line 628
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 632
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOutput:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public isGoogleAssistantLaunch()Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGoogleAssistantLaunchOnly()Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    return p0
.end method

.method public isLaunchInternalMode()Z
    .locals 1

    .line 222
    iget p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInternalModeValue:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isLaunchedAsInSecure()Z
    .locals 1

    .line 595
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOneShot()Z
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isOneShotPhoto()Z
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isPhoto()Z

    move-result p0

    return p0
.end method

.method public isOneShotVideo()Z
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mOneShot:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result p0

    return p0
.end method

.method public isQuickLaunch()Z
    .locals 2

    .line 148
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBypassCameraSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isQuickLaunchOnFirstLaunch()Z
    .locals 2

    .line 589
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBypassCameraSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSecurePhotoLaunchedByIntent()Z
    .locals 0

    .line 641
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsSecurePhotoLaunchedByIntent:Z

    return p0
.end method

.method public isSmartLaunch()Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onActivityResult(I)V
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 285
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 286
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 287
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    goto :goto_0

    .line 279
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 280
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 281
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    goto :goto_0

    .line 273
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 274
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 275
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    goto :goto_0

    .line 267
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 268
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    goto :goto_0

    .line 262
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    goto :goto_0

    .line 255
    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    :goto_0
    const/4 p1, 0x1

    .line 293
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByActivityResult:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByIntent:Z

    .line 346
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByActivityResult:Z

    .line 347
    iput v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    const/4 v1, 0x1

    .line 348
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    .line 349
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsRestarted:Z

    return-void
.end method

.method onRestart()V
    .locals 1

    .line 300
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchTrigger()V

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsRestarted:Z

    return-void
.end method

.method onResume(ZZ)V
    .locals 1

    .line 334
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchTrigger()V

    .line 336
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsRestarted:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->doRestart(ZZ)V

    :cond_0
    return-void
.end method

.method setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-void
.end method

.method setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZZ)V
    .locals 9

    .line 363
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsLaunchedByIntent:Z

    .line 366
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 367
    const-string v2, "android.intent.action.MAIN"

    if-nez v1, :cond_1

    .line 369
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v2

    .line 372
    :cond_1
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 374
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    const-string v6, "android.media.action.IMAGE_CAPTURE_SECURE"

    const/4 v7, 0x0

    if-nez v4, :cond_3

    .line 375
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 376
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v7

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v0

    .line 377
    :goto_1
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isResetCapturingMode(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 378
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 380
    :cond_4
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setIsSecurePhotoLaunchedByIntent(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchCameraMode()V

    .line 384
    iput v7, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mGoogleAssistantSelfTimer:I

    .line 385
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mIsGoogleAssistantLaunchOnly:Z

    .line 387
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setLaunchMode: action: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 389
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v8, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_2
    move v7, v8

    goto/16 :goto_3

    :sswitch_0
    const-string v2, "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/16 v7, 0xa

    goto/16 :goto_3

    :sswitch_1
    const-string v2, "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_2
    const-string v2, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    const/16 v7, 0x8

    goto :goto_3

    :sswitch_3
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_5
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_6
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v7, 0x4

    goto :goto_3

    :sswitch_7
    const-string v2, "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    const/4 v7, 0x3

    goto :goto_3

    :sswitch_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_2

    :cond_e
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_9
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_2

    :cond_f
    move v7, v0

    goto :goto_3

    :sswitch_a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_2

    :cond_10
    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 471
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 473
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_6

    .line 474
    :cond_11
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 476
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_6

    .line 477
    :cond_12
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 479
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_6

    .line 482
    :cond_13
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_6

    .line 463
    :pswitch_0
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_6

    .line 457
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 458
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_6

    .line 466
    :pswitch_2
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mExtraOperation:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    .line 467
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_6

    .line 452
    :pswitch_3
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 453
    invoke-direct {p0, v1, p1, p4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->checkLaunchCameraModeFromGoogleAssistant(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto/16 :goto_6

    .line 411
    :pswitch_4
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 412
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p2

    sget-object p4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p4, :cond_14

    .line 413
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 415
    :cond_14
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->VIDEO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_6

    .line 434
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setIsSecurePhotoLaunchedByIntent(Z)V

    .line 437
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_16

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_16

    .line 438
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByCameraLongPress(Landroid/content/Intent;)Z

    move-result p4

    if-eqz p4, :cond_15

    if-eqz p3, :cond_15

    goto :goto_4

    .line 446
    :cond_15
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto/16 :goto_6

    .line 439
    :cond_16
    :goto_4
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p3, :cond_17

    .line 440
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_6

    .line 442
    :cond_17
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_6

    .line 420
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 421
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByCameraLongPress(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz p3, :cond_18

    goto :goto_5

    .line 429
    :cond_18
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 430
    invoke-direct {p0, v1, p1, p4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->checkLaunchCameraModeFromGoogleAssistant(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto :goto_6

    .line 422
    :cond_19
    :goto_5
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p3, :cond_1a

    .line 423
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_6

    .line 425
    :cond_1a
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_6

    .line 393
    :pswitch_7
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, p3, :cond_1b

    .line 394
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_6

    .line 396
    :cond_1b
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_6

    .line 406
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setIsSecurePhotoLaunchedByIntent(Z)V

    .line 407
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    goto :goto_6

    .line 401
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)V

    .line 488
    :cond_1c
    :goto_6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_1d

    .line 490
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setExtraOutput(Landroid/net/Uri;)V

    .line 491
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setAddToMediaStore(Z)V

    goto :goto_8

    .line 492
    :cond_1d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_20

    .line 493
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1e
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 494
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#### intent extra key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_7

    .line 500
    :cond_1f
    const-string p3, "output"

    const-class p4, Landroid/net/Uri;

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 502
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setExtraOutput(Landroid/net/Uri;)V

    .line 503
    const-string p3, "addToMediaStore"

    .line 504
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 503
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setAddToMediaStore(Z)V

    goto :goto_8

    .line 506
    :cond_20
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setExtraOutput(Landroid/net/Uri;)V

    .line 507
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setAddToMediaStore(Z)V

    .line 509
    :goto_8
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 510
    sget-object p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 512
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOutput()Landroid/net/Uri;

    move-result-object p2

    .line 513
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 512
    invoke-static {p2, p3}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getOneShotStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p2, p3, :cond_21

    .line 514
    sget-object p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mStorageTypeForOneshot:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 518
    :cond_21
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setupLockMode(Landroid/content/Intent;)V

    .line 520
    const-string p2, "com.sonyericsson.android.camera.extra.launchTrigger"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_25

    .line 522
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 523
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_9

    .line 524
    :cond_22
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_23

    .line 525
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_9

    .line 526
    :cond_23
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_24

    .line 527
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_9

    .line 528
    :cond_24
    sget-object p3, Lcom/sonyericsson/android/camera/LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 529
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 533
    :cond_25
    :goto_9
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByCameraLongPress(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 534
    iget-object p2, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLockMode:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    if-ne p2, p3, :cond_26

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    goto :goto_a

    .line 535
    :cond_26
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 534
    :goto_a
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_b

    .line 536
    :cond_27
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLockScreen(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 537
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_b

    .line 538
    :cond_28
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByPowerKeyDoubleTap(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 539
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_b

    .line 540
    :cond_29
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedByLiftTrigger(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 541
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 544
    :cond_2a
    :goto_b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p2, p3, :cond_2c

    .line 545
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 546
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->ONE_SHOT_APP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    goto :goto_c

    .line 548
    :cond_2b
    sget-object p2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HOME:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setLaunchTrigger(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 552
    :cond_2c
    :goto_c
    const-string p2, "internal_mode"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 553
    sget-object p3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 555
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result p3

    .line 553
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInternalModeValue:I

    .line 556
    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 559
    :cond_2d
    const-string p2, "capturing_mode"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 560
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 562
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p3

    .line 560
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchInternlCallingCapturingModeValue:I

    .line 563
    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 566
    :cond_2e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 568
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->updateCheckStartTime()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_a
        -0x62d863dd -> :sswitch_9
        -0x45f16402 -> :sswitch_8
        -0x3f26bf -> :sswitch_7
        0x1ba9c1af -> :sswitch_6
        0x1cf71807 -> :sswitch_5
        0x29c9b033 -> :sswitch_4
        0x43680478 -> :sswitch_3
        0x515eaea0 -> :sswitch_2
        0x69cac3f8 -> :sswitch_1
        0x75e6b181 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldAddToMediaStore()Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mAddToMediaStore:Z

    return p0
.end method

.method shouldNotRemainRecentTask()Z
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->mInitialLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
