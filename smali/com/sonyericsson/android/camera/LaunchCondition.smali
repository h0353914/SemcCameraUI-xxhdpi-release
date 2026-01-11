.class public interface abstract Lcom/sonyericsson/android/camera/LaunchCondition;
.super Ljava/lang/Object;
.source "LaunchCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/LaunchCondition$CameraLaunchSource;,
        Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;,
        Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;,
        Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;,
        Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;
    }
.end annotation


# static fields
.field public static final ACTION_FRONT_STILL_IMAGE_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

.field public static final ACTION_FRONT_VIDEO_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA"

.field public static final ACTION_QUICK_LAUNCH:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH"

.field public static final ACTION_QUICK_LAUNCH_AND_CAPTURE:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE"

.field public static final CAMERA_IS_VOICE_INTERACTION_ROOT:Ljava/lang/String; = "is_voice_interaction_root"

.field public static final EXTRA_CAMERA_LAUNCH_SOURCE:Ljava/lang/String; = "com.android.systemui.camera_launch_source"

.field public static final EXTRA_LAUNCH_INTERNAL_CALLING_CAPTURING_MODE:Ljava/lang/String; = "capturing_mode"

.field public static final EXTRA_LAUNCH_INTERNAL_MODE:Ljava/lang/String; = "internal_mode"

.field public static final EXTRA_LOCK_MODE:Ljava/lang/String; = "com.sonyericsson.android.camera.extra.LOCK_MODE"

.field public static final LAUNCH_ACTIVITY_WITH_CANCEL_ANIMATION:Ljava/lang/String; = "launch_activity_with_cancel_animation"

.field public static final LAUNCH_TRIGGER:Ljava/lang/String; = "com.sonyericsson.android.camera.extra.launchTrigger"


# virtual methods
.method public abstract clearExtraOperation()V
.end method

.method public abstract clearLaunchCameraMode()V
.end method

.method public abstract clearLaunchInternalCallingCapturingMode()V
.end method

.method public abstract clearLaunchInternalMode()V
.end method

.method public abstract getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
.end method

.method public abstract getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;
.end method

.method public abstract getExtraOutput()Landroid/net/Uri;
.end method

.method public abstract getGoogleAssistantSelfTimer()I
.end method

.method public abstract getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;
.end method

.method public abstract getLaunchInternalCallingCapturingMode()I
.end method

.method public abstract getLaunchInternalMode()I
.end method

.method public abstract getStorageTypeForOneshot()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
.end method

.method public abstract getVideoQualityConfigurations()Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;
.end method

.method public abstract isGoogleAssistantLaunch()Z
.end method

.method public abstract isGoogleAssistantLaunchOnly()Z
.end method

.method public abstract isLaunchInternalMode()Z
.end method

.method public abstract isOneShot()Z
.end method

.method public abstract isOneShotPhoto()Z
.end method

.method public abstract isOneShotVideo()Z
.end method

.method public abstract isQuickLaunch()Z
.end method

.method public abstract isSmartLaunch()Z
.end method

.method public abstract shouldAddToMediaStore()Z
.end method
