.class public Lcom/sonyericsson/android/camera/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/sonyericsson/cameracommon/activity/TerminateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;,
        Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;,
        Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;,
        Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;,
        Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$StartGyroCalibrationOnPauseTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeVideoEventObserver;,
        Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;,
        Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;,
        Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;,
        Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;,
        Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;,
        Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;,
        Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;
    }
.end annotation


# static fields
.field private static final ACTION_REQUEST_SOMC_CAMERA_SERVICE:Ljava/lang/String; = "com.sonymobile.cameracommon.action.REQUEST_SOMC_CAMERA_SERVICE"

.field private static final ASYNC_ACT_TIMEOUT_MILLIS:I = 0xbb8

.field private static final CAMERA_COMMON_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.cameracommon"

.field public static final INTENT_SUBJECT_CANCEL:Ljava/lang/String; = "cancel"

.field public static final INTENT_SUBJECT_PAUSED:Ljava/lang/String; = "activity-paused"

.field public static final INTENT_SUBJECT_PREPARE:Ljava/lang/String; = "prepare"

.field public static final INTENT_SUBJECT_RESUMED:Ljava/lang/String; = "activity-resumed"

.field public static final INTENT_SUBJECT_START:Ljava/lang/String; = "start"

.field public static final INTENT_SUBJECT_START_SECURE:Ljava/lang/String; = "start-secure"

.field private static final ON_RESUME_DELAY_NON_SECURE_MILLIS:J = 0xfL

.field private static final ON_RESUME_DELAY_SECURE_MILLIS:J = 0x1eL

.field private static final PREPARE_PLATFORM_CAPABILITY_TIMED_OUT_MILLIS:J = 0x7d0L

.field private static final RESULT_AUTO_OFF_TIMER:I = 0x2

.field private static final SEND_PAUSE_EVENT_DELAY_MILLIS:J = 0x1f4L

.field public static final SETUP_DEVICE_SETUP_WAIT_TIME:I = 0x64

.field private static final SETUP_LAZY_EXECUTION_WAIT_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CameraActivity"

.field private static sIsReportFullyDrawnAlreadyReported:Z = false


# instance fields
.field private final REQUESTED_PERMISSIONS:[Ljava/lang/String;

.field private mActivityResultListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

.field private mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

.field private mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

.field private mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

.field private mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

.field private mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private mCanFinishByScreenOff:Z

.field private mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private mDisableMultiWindow:Z

.field private mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

.field private mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mIsCalledOnDestroy:Z

.field private mIsColdBoot:Z

.field private mIsLazyInitializationRunning:Z

.field private mIsNeedToCloseBypassCameraBecauseModeChanged:Z

.field private mIsReceiverResistered:Z

.field private final mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

.field private mKeyguardManager:Landroid/app/KeyguardManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

.field private mLastDeterminedOrientationDegree:I

.field private mLastOrientationDegree:I

.field private mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

.field private final mLayoutOrientationChangedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

.field private mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

.field private mMainHandler:Landroid/os/Handler;

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

.field private mResetSettingsRequested:Z

.field private mReturnOneShotResult:Z

.field private mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

.field private final mSendPauseEventAndReleaseCameraTask:Ljava/lang/Runnable;

.field private mSensorOrientationDegree:I

.field private mSetupAllTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mSetupWizardResultListener:Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

.field private mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

.field private final mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

.field private mSkippedOnResume:Z

.field private mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

.field protected mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

.field private mThermalAlertListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

.field private mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

.field private mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

.field private mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

.field private mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

.field private mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

.field private mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

.field private mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 148
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    const/4 v1, 0x0

    .line 193
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    const/4 v2, 0x0

    .line 247
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    .line 257
    new-instance v3, Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    invoke-direct {v3, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    .line 259
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    .line 260
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    .line 263
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    .line 266
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 269
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 272
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 274
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z

    const-string v3, "android.permission.CAMERA"

    const-string v4, "android.permission.RECORD_AUDIO"

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 294
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    .line 301
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    .line 306
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 307
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    .line 308
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    .line 309
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    .line 321
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 324
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 332
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 339
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSkippedOnResume:Z

    .line 361
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 366
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    const/4 v3, -0x1

    .line 370
    iput v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    .line 372
    iput v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    .line 374
    iput v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    .line 377
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    .line 381
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    .line 383
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    .line 386
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    .line 388
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    .line 449
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$1;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    .line 472
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$2;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSendPauseEventAndReleaseCameraTask:Ljava/lang/Runnable;

    .line 499
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$3;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    .line 579
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$4;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    .line 608
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$5;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupWizardResultListener:Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    .line 1238
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCanFinishByScreenOff:Z

    return-void
.end method

.method private abort(Z)V
    .locals 3

    .line 2247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2255
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2257
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2258
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    if-eqz p1, :cond_1

    .line 2259
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 2261
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    goto :goto_1

    .line 2263
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    goto :goto_1

    .line 2256
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 2267
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSkippedOnResume:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSkippedOnResume:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/CameraActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->onResumeTasks()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/lang/String;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestFinishCameraActivity()V

    return-void
.end method

.method static synthetic access$3102(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;)Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/CameraActivity;Z)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->abort(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/sonyericsson/android/camera/CameraActivity;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    return p1
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/CameraActivity;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    return p0
.end method

.method static synthetic access$4302(Lcom/sonyericsson/android/camera/CameraActivity;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    return p1
.end method

.method static synthetic access$4402(Lcom/sonyericsson/android/camera/CameraActivity;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    return p1
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->canFinishByScreenOff()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->allowFinishByScreenOff()V

    return-void
.end method

.method private addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z
    .locals 1

    .line 3453
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 3454
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    .line 3457
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3461
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private addExternalCameraAppContent(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2691
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sonyericsson.android.camera.extra.CAPTURED_URIS"

    .line 2694
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2696
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2697
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method private allowFinishByScreenOff()V
    .locals 1

    const/4 v0, 0x1

    .line 1245
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCanFinishByScreenOff:Z

    return-void
.end method

.method private awaitCreateContentInfoReady()Z
    .locals 0

    .line 2723
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method private awaitThermalAlertReceiverReady()Z
    .locals 0

    .line 1620
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method private canFinishByScreenOff()Z
    .locals 0

    .line 1241
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCanFinishByScreenOff:Z

    return p0
.end method

.method private cancelDelayedEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 1705
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeParametersForGoogleAssistant()V
    .locals 4

    .line 3612
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 3613
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3616
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->clearLaunchCameraMode()V

    return-void

    .line 3620
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 3641
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_2

    .line 3622
    :pswitch_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoCodec()Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    move-result-object v2

    .line 3623
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    if-eqz v2, :cond_4

    if-nez v1, :cond_1

    goto :goto_1

    .line 3630
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p0

    if-nez p0, :cond_3

    .line 3631
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v2, p0, :cond_2

    .line 3632
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    .line 3633
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v2, p0, :cond_3

    .line 3634
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 3637
    :cond_3
    :goto_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_2

    .line 3626
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->clearLaunchCameraMode()V

    return-void

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createBatteryChangedReceiver()V
    .locals 2

    .line 2883
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-void
.end method

.method private createLaunchCondition()V
    .locals 2

    .line 2826
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 2828
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v0

    .line 2829
    new-instance v1, Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/LaunchCondition;-><init>(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    return-void
.end method

.method private createViewFinder()Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    .locals 4

    .line 1136
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v1

    .line 1137
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUiControlSettings()Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;-><init>(Landroid/content/Context;ZLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/setting/UiControlSettings;)V

    .line 1139
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1140
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setCameraDevice(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 1141
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->prepareSelfTimerAndTouchCapture()V

    .line 1143
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private disableOrientation()V
    .locals 1

    .line 3113
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "disableOrientation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3114
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 3115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 3116
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_1
    return-void
.end method

.method private doPause()V
    .locals 6

    .line 1918
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->removeOnPreviewStartedListener()V

    .line 1921
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1926
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1929
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eqz v0, :cond_0

    .line 1931
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1932
    invoke-interface {v3}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v5

    .line 1931
    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 1936
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mResetSettingsRequested:Z

    if-eqz v0, :cond_1

    .line 1937
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->clearAllSettings(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 1940
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    const/4 v0, 0x0

    .line 1941
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1944
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1946
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v1, :cond_2

    .line 1947
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 1951
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    if-eqz v1, :cond_3

    .line 1952
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 1954
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    if-eqz v1, :cond_4

    .line 1955
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 1958
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->releaseContentsViewController()V

    .line 1961
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1962
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getLifeCycleNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;->onPause()V

    .line 1966
    :cond_5
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    if-eqz v1, :cond_6

    .line 1967
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    .line 1971
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    .line 1974
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1977
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unmuteSound()V

    .line 1979
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 1982
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableOrientation()V

    .line 1984
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onPause(Z)V

    .line 1990
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1991
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1992
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1991
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1994
    :cond_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->onPause()V

    .line 1996
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$StartGyroCalibrationOnPauseTask;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity$StartGyroCalibrationOnPauseTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doResume()V
    .locals 9

    .line 1316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isCorrectExtraOutputPath()Z

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1317
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f013d

    .line 1318
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f013c

    .line 1319
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1320
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0f01f7

    .line 1321
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/CameraActivity$9;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/CameraActivity$9;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 1322
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1328
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 1329
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1330
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 1334
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isLaunchInternalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1336
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchInternalMode()I

    move-result v5

    aget-object v0, v0, v5

    .line 1337
    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearLaunchInternalMode()V

    .line 1339
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchInternalCallingCapturingMode()I

    move-result v6

    aget-object v5, v5, v6

    .line 1340
    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearLaunchInternalCallingCapturingMode()V

    .line 1341
    sget-object v6, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->MODE_WHITE_LIST:Ljava/util/List;

    .line 1342
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 1343
    sget-object v7, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1360
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v5, :cond_1

    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad launch internalMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x10

    .line 1355
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1356
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1355
    invoke-static {p0, v0, v1, v2, v6}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void

    :pswitch_1
    const/16 v0, 0x11

    .line 1350
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1351
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    .line 1350
    invoke-static {p0, v0, v1, v5, v6}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void

    :pswitch_2
    const/16 v0, 0x12

    .line 1345
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1346
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    .line 1345
    invoke-static {p0, v0, v1, v5, v6}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void

    .line 1366
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableOrientation()V

    .line 1369
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v0

    sget-object v5, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-eq v0, v5, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearCachedUserSetting()V

    .line 1374
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 1375
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    .line 1374
    invoke-interface {v0, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1376
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->isLaunchedByGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1377
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->changeParametersForGoogleAssistant()V

    .line 1381
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v5, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v5, :cond_4

    .line 1386
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    goto :goto_1

    .line 1388
    :cond_4
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 1393
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 1394
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1395
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v6

    .line 1393
    invoke-virtual {p0, v0, v5, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1396
    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v6, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v6, p0, v7}, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    .line 1399
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x800

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 1400
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1402
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x100

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1403
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1406
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1408
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->awaitLoadSettingsThread()Z

    .line 1410
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->readLocationSettings(Landroid/content/Context;)V

    .line 1413
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v1

    sget-object v5, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-ne v1, v5, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v3

    .line 1412
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAutoPowerOffTimeOutDuration(Z)V

    .line 1416
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoPowerOffTimer()V

    .line 1418
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onResume(Z)V

    .line 1421
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1422
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->joinInitializeTask()V

    .line 1423
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getLifeCycleNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;->onResume()V

    .line 1427
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableFpsLimitation()V

    .line 1430
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updatePreviewLayoutParams()V

    .line 1432
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1433
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v1

    sget-object v5, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-eq v1, v5, :cond_7

    .line 1434
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v1

    sget-object v5, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-ne v1, v5, :cond_8

    .line 1435
    :cond_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitCreateContentInfoReady()Z

    .line 1439
    :cond_8
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1441
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1443
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1447
    :cond_9
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V

    .line 1448
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setView(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1450
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 1451
    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->getGoogleAssistantSelfTimer()I

    move-result v5

    if-lez v5, :cond_a

    .line 1452
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    goto :goto_3

    .line 1453
    :cond_a
    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->isGoogleAssistantLaunchOnly()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 1454
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1455
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->RECORD:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 1458
    :cond_b
    :goto_3
    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    aput-object v0, v7, v4

    const/4 v0, 0x2

    aput-object v1, v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1466
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne v1, v3, :cond_d

    .line 1467
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v1

    if-ne v1, v0, :cond_c

    .line 1469
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    .line 1470
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    goto :goto_4

    .line 1472
    :cond_c
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    .line 1473
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 1479
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    if-nez v0, :cond_e

    .line 1480
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchMultiWindow()V

    .line 1483
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkStartupStatus()V

    .line 1486
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 1487
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 1490
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1491
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    if-ne v1, v3, :cond_f

    .line 1492
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-ne v1, v3, :cond_f

    .line 1493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffTask;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1494
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    :cond_f
    if-eqz v0, :cond_10

    .line 1499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isAlreadyBcl()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1500
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-eq v0, v1, :cond_10

    .line 1501
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xf

    .line 1502
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupWizardResultListener:Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    goto :goto_5

    .line 1505
    :cond_10
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    .line 1506
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 1510
    :goto_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestInflateUiComponents()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enableOrientation()V
    .locals 1

    .line 3104
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "enableOrientation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    .line 3106
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 3107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method private finishUrgently()V
    .locals 0

    .line 2874
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2875
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getDownAll()V
    .locals 3

    .line 2134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->release()V

    const/4 v0, 0x0

    .line 2139
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2140
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 2141
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 2142
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->release()V

    .line 2143
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2146
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseSoundPlayer()V

    .line 2149
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v1, :cond_0

    .line 2150
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 2154
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2155
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    .line 2158
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 2159
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    .line 2160
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    .line 2162
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    return-void
.end method

.method private static getFuture(Ljava/util/concurrent/Future;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0xbb8

    .line 671
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string v0, "Failed to get Future."

    .line 680
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "Failed to get Future."

    .line 678
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    const-string v0, "Failed to get Future."

    .line 676
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p0

    const-string v0, "Failed to get Future."

    .line 674
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)I
    .locals 1

    .line 3264
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p1, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xb4

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x5a

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x0

    .line 3283
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p1, p0

    .line 3284
    rem-int/lit16 p1, p1, 0x168

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static in(III)Z
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .line 3573
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    const-string v0, "keyguard"

    .line 3574
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3576
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 3577
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isLaunchedFromLocked(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "com.sonyericsson.android.camera.extra.launchTrigger"

    .line 3435
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3437
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 3439
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 3442
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isRecording()Z
    .locals 1

    .line 2457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_0

    .line 2458
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private launchMultiWindow()V
    .locals 5

    .line 1542
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launch multi window mode activity "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1543
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    const/4 v1, 0x0

    .line 1544
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    .line 1545
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1546
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonyericsson/android/camera/MultiWindowActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1547
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1548
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    .line 1549
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1550
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    .line 1551
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1555
    :cond_2
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_3

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SomcCamera not support multi window mode, intent :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1557
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    .line 1561
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1564
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_5

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SomcCamera not support multi window mode, intent :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1566
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    :cond_6
    :goto_0
    const/high16 v3, 0x2000000

    .line 1570
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1571
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_7

    new-array v0, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start multi window activity, intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1573
    :cond_7
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1574
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void
.end method

.method private logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V
    .locals 4

    .line 3397
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->access$4600(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 3398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 3400
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3403
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    new-array p0, v3, [Ljava/lang/String;

    aput-object p1, p0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is called"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 3401
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is called:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V
    .locals 3

    .line 3414
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    aput-object p1, p0, v0

    const/4 p1, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " FINISH."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3416
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "End "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 3417
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->access$4600(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 3419
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    if-ne p2, p0, :cond_1

    .line 3420
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    :cond_1
    return-void
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .locals 4

    const-string v0, "TraceLog"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CameraActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private muteSound()V
    .locals 3

    .line 3009
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const-string v0, "audio"

    .line 3010
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 3012
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    .line 3014
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "muteSound: success"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 3016
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "muteSound: fail"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyActivityState(Ljava/lang/String;)V
    .locals 5

    .line 2440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2441
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x1b

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    .line 2442
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 2443
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 2444
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2447
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2453
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private notifyLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .locals 4

    .line 3176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p1, v0, :cond_0

    return-void

    .line 3178
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p1, v0, :cond_1

    return-void

    .line 3181
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIENTATION : Layout orientation(sensor) is changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3184
    :cond_2
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 3185
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;

    .line 3186
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;->onLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onResumeTasks()V
    .locals 2

    .line 1280
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 1281
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1282
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1284
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setActivityForeground(Z)V

    .line 1285
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->onResume()V

    const/16 v0, 0xc

    .line 1288
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1290
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->doResume()V

    goto :goto_0

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_4

    .line 1294
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    const-string v0, "start clearExtraOperation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1296
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearExtraOperation()V

    .line 1300
    :cond_4
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1303
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    const-string v0, "activity-resumed"

    .line 1306
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->start()V

    .line 1310
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1311
    :cond_5
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "onResume() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1312
    :cond_6
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method private postEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 1697
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method private prepareFinish()V
    .locals 4

    .line 2614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_0

    .line 2615
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private registerForceExitRequestReceiver()V
    .locals 3

    .line 2729
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "registerForceExitRequestReceiver()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2732
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2733
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    .line 2734
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2736
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2737
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2739
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    .line 2740
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private registerShutDownReceiver()V
    .locals 2

    .line 1019
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 1020
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1021
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .line 2001
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableFpsLimitation()V

    .line 2003
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 2004
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 2005
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    goto :goto_0

    .line 2010
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    :goto_0
    return-void
.end method

.method private releaseSoundPlayer()V
    .locals 1

    .line 2234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->release()V

    const/4 v0, 0x0

    .line 2236
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    :cond_0
    return-void
.end method

.method private releaseWearableFramework()V
    .locals 2

    .line 2466
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->release()V

    .line 2468
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    .line 2470
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 2471
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 2472
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    return-void
.end method

.method private requestFinishCameraActivity()V
    .locals 2

    .line 1750
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "requestFinishCameraActivity()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1752
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1753
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private requestInflateUiComponents()V
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->requestInflate(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .locals 0

    .line 3245
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)I

    move-result p1

    .line 3246
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    .line 3247
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    .line 3248
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    return-void
.end method

.method private setupAll()V
    .locals 2

    .line 1127
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 1130
    new-instance v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    return-void
.end method

.method private setupCoreInstance()V
    .locals 10

    .line 1172
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked setupCoreInstance()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1175
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1178
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createViewFinder()Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    .line 1179
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 1182
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1187
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v7

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1188
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v8

    .line 1189
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v2

    xor-int/lit8 v9, v2, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/android/camera/view/UserEventHandler;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/MessageSettings;Z)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1190
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1191
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->start()V

    .line 1192
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1193
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getTouchEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1194
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getTouchEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->start()V

    .line 1195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->start()V

    .line 1201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setDependencies(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method

.method private setupScreenOffReceiver()V
    .locals 2

    .line 1010
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    .line 1011
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1012
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1013
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setupWearableFramework()V
    .locals 8

    .line 1067
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 1068
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 1069
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeVideoEventObserver;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeVideoEventObserver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 1070
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    return-void
.end method

.method private unRegisterShutDownReceiver()V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unmuteSound()V
    .locals 2

    .line 3026
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const-string v0, "audio"

    .line 3027
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 3029
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 3030
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "unmuteSound: success"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 3032
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "unmuteSound: fail"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterForceExitRequestReceiver()V
    .locals 2

    .line 2745
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "unregisterForceExitRequestReceiver()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2746
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2748
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    .line 2750
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 2751
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2752
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    :cond_2
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 2242
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "call abort()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 2243
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort(Z)V

    return-void
.end method

.method public addOrienationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
    .locals 0

    .line 3136
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public awaitSetupAllReady()Z
    .locals 0

    .line 1044
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method public awaitViewFinderReady()Z
    .locals 2

    .line 1598
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1600
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 1602
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->attachToWindow()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3507
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)Z

    move-result p0

    return p0
.end method

.method public checkAndRequestSelfPermissions(I[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)Z
    .locals 2

    .line 3520
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->checkAndRequestSelfPermissions(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3523
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$11;

    invoke-direct {v1, p0, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity$11;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)V

    .line 3559
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    :cond_0
    return v0
.end method

.method public clearLaunchCameraMode()V
    .locals 0

    .line 3606
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->clearLaunchCameraMode()V

    return-void
.end method

.method public final disableAutoPowerOffTimer()V
    .locals 1

    .line 3064
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "disableAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3065
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideAutoPowerOffHintText()V

    .line 3066
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->disableAutoPowerOffTimer()V

    return-void
.end method

.method public disableSideSense()V
    .locals 0

    .line 3656
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->stop()V

    return-void
.end method

.method public final enableAutoPowerOffTimer()V
    .locals 1

    .line 3056
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "enableAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3057
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->enableAutoPowerOffTimer()V

    return-void
.end method

.method public enableSideSense()V
    .locals 0

    .line 3652
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->start()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 2855
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2856
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2858
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishAndKillProcess()V
    .locals 0

    .line 2595
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2596
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public finishOneShot(Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;)V
    .locals 5

    .line 1093
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishOneShot: result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1096
    :cond_0
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    .line 1098
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1100
    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1101
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1102
    iget p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1103
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    goto :goto_1

    .line 1104
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1105
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1106
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->isSuccess:Z

    if-eqz v0, :cond_2

    .line 1107
    iget v0, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iget-object p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, v1, v2, v3, p1}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->createResultIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1114
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    goto :goto_0

    .line 1118
    :cond_3
    iget p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 1120
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public getBatteryLevel()I
    .locals 0

    .line 3565
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .locals 0

    .line 2570
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    return-object p0
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .locals 0

    .line 3365
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 0

    .line 3095
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p0
.end method

.method public getLastDetectedOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .locals 0

    .line 3337
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0
.end method

.method public getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;
    .locals 0

    .line 2879
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    return-object p0
.end method

.method public getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .locals 4

    .line 3196
    iget v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3198
    iget v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3201
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    .line 3206
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v1

    rsub-int v1, v1, 0x168

    add-int/2addr v0, v1

    .line 3207
    rem-int/lit16 v0, v0, 0x168

    .line 3212
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-eq v1, v2, :cond_3

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_4

    const/16 p0, 0x3c

    goto :goto_2

    :cond_4
    const/16 p0, 0x1e

    :goto_2
    const/16 v1, 0x5a

    rsub-int/lit8 v2, p0, 0x5a

    add-int/2addr v1, p0

    .line 3227
    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3228
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    :cond_5
    const/16 v2, 0x10e

    rsub-int v3, p0, 0x10e

    .line 3230
    invoke-static {v0, v1, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3231
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    :cond_6
    add-int/2addr v2, p0

    .line 3233
    invoke-static {v0, v3, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 3234
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    .line 3237
    :cond_7
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0
.end method

.method public getOrientation()I
    .locals 3

    .line 3295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 3296
    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne v0, v1, :cond_0

    .line 3297
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v0

    .line 3300
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 3311
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$12;->$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->ordinal()I

    move-result v2

    aget p0, p0, v2

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .locals 3

    .line 1209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-nez v0, :cond_2

    const-string v0, "window"

    .line 1210
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1211
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1212
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1213
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1214
    iget v0, v1, Landroid/graphics/Point;->y:I

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v1, v0, v1

    .line 1215
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1216
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_0

    :cond_0
    const v1, 0x3fe38e39

    sub-float/2addr v0, v1

    .line 1217
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 1218
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_0

    .line 1220
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->NOT_DEFINED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 1223
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-object p0
.end method

.method public getSensorOrientationDegree()I
    .locals 4

    .line 3327
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIENTATION:getSensorOrientationDegree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3329
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    return p0
.end method

.method public getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;
    .locals 0

    .line 3345
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method public getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2843
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    return-object p0
.end method

.method public getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2534
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2537
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    return-object p0
.end method

.method public hasExtraOutputPath()Z
    .locals 1

    .line 3370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3373
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->checkValidUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public isAllowToUseLocation()Z
    .locals 1

    .line 3697
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3698
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->areCallerGeoPermissionsGranted(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isAlreadyBcl()Z
    .locals 0

    .line 3569
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isAlreadyBcl()Z

    move-result p0

    return p0
.end method

.method public isAlreadyHighTemperature()Z
    .locals 1

    .line 1632
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isAlreadyHighTemperature()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceInSecurityLock()Z
    .locals 3

    .line 2381
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.extra.SUBJECT"

    .line 2386
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keyguard"

    .line 2389
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 2391
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    const-string v2, "start-secure"

    .line 2394
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 2395
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isSecurePhotoLaunchedByIntent()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isGpsLocationAllowed()Z
    .locals 0

    .line 3383
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->getIsGpsLocationAllowed()Z

    move-result p0

    return p0
.end method

.method public isInLockTaskMode()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "activity"

    .line 3430
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3431
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .line 3583
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    const-string v0, "keyguard"

    .line 3584
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3586
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 3587
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isLazyInitializationRunning()Z
    .locals 0

    .line 2591
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z

    return p0
.end method

.method public isNetworkLocationAllowed()Z
    .locals 0

    .line 3387
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->getIsNetworkLocationAllowed()Z

    move-result p0

    return p0
.end method

.method public isOneShot()Z
    .locals 0

    .line 3350
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isOneShotPhoto()Z
    .locals 0

    .line 3355
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isPhoto()Z

    move-result p0

    return p0
.end method

.method public isOneShotVideo()Z
    .locals 0

    .line 3360
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result p0

    return p0
.end method

.method public final isStillImageCamera()Z
    .locals 1

    .line 2996
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 2998
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isThermalWarningExtraState()Z
    .locals 1

    .line 1658
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isWarningExtraState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isThermalWarningReceived()Z
    .locals 1

    .line 1672
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isThermalWarningReceived()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isThermalWarningState()Z
    .locals 1

    .line 1645
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1646
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isWarningState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyStateBlockedToWearable()V
    .locals 2

    .line 2542
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "notifyStateBlockedToWearable()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2543
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2544
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    .line 2546
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;->BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;

    invoke-interface {p0, v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V

    :cond_1
    return-void
.end method

.method public notifyStateIdleToWearable()V
    .locals 2

    .line 2553
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "notifyStateIdleToWearable()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2554
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2555
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    .line 2557
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;->IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;

    invoke-interface {p0, v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 2621
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2623
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2624
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2628
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2629
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->reconstructLocalCache()V

    .line 2632
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 2633
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    if-eqz v0, :cond_3

    .line 2635
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2636
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2639
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 2640
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    .line 2644
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0, p1, p3}, Lcom/sonyericsson/android/camera/LaunchCondition;->onActivityResult(ILandroid/content/Intent;)V

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2674
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p3, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_SD_PERMISSION_DISPLAY_FINISHED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p3, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    if-nez p2, :cond_5

    .line 2677
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SD_CARD_PERMISSION_UNAVAILABLE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_5

    .line 2669
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 2657
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2658
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 2659
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 2660
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 2661
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 2660
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v1

    .line 2658
    invoke-virtual {p1, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPortraitSelfieEvent(Landroid/content/Context;Ljava/lang/String;)V

    if-ne p2, v0, :cond_5

    .line 2663
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 2649
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2650
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendDualCameraEffectEvent(Landroid/content/Context;)V

    if-ne p2, v0, :cond_5

    .line 2652
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 2278
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "onCancel finish()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2279
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 775
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 776
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 780
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 782
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 783
    :cond_1
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "PlatformCapability is not prepared yet"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_4

    .line 786
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Retry preparing PlatformCapability"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 787
    :cond_3
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$6;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->prepareAsync(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    .line 795
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Z

    .line 799
    :cond_4
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_5

    .line 801
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 802
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f012a

    .line 803
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f012d

    .line 804
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 805
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f01f7

    .line 806
    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$7;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/CameraActivity$7;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 807
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 814
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 816
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 817
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 822
    :cond_5
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_6

    const-string p1, "CameraActivity"

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 823
    :cond_6
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 826
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 829
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 832
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 836
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    .line 837
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 848
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 849
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    const-string p1, "AsyncAct"

    const/16 v0, 0xa

    .line 852
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    .line 857
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createLaunchCondition()V

    .line 859
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 860
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    instance-of v2, p0, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    .line 859
    invoke-virtual {p1, v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    const-string p1, "activity-resumed"

    .line 866
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object p1

    .line 869
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-ne p1, v0, :cond_8

    .line 870
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 874
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchedFromLocked(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-eq p1, v0, :cond_9

    .line 875
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 876
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 881
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    .line 883
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 884
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 885
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOutput()Landroid/net/Uri;

    move-result-object v10

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 886
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getVideoQualityConfigurations()Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v11

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 887
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraSettings()Lcom/sonyericsson/android/camera/setting/ExtraSettings;

    move-result-object v12

    move-object v7, p1

    .line 882
    invoke-interface/range {v7 .. v12}, Lcom/sonyericsson/android/camera/setting/UserSettings;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;Lcom/sonyericsson/android/camera/setting/ExtraSettings;)V

    .line 890
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 892
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_a

    .line 893
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    goto :goto_0

    :cond_a
    move v0, v5

    .line 895
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    .line 896
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 895
    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 897
    new-instance p1, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;

    invoke-direct {v0, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 903
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupCoreInstance()V

    .line 908
    invoke-super {p0, v6}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 912
    new-instance p1, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-direct {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    .line 915
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onCreate(Landroid/content/Context;)V

    .line 918
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 927
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageReadable()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 928
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_b

    const-string p1, "StorageActivated was already finished."

    .line 929
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 931
    :cond_b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;

    invoke-direct {v0, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    goto :goto_1

    .line 933
    :cond_c
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_d

    const-string p1, "StorageActivated was not finished yet."

    .line 934
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 936
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$8;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-interface {p1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 962
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createBatteryChangedReceiver()V

    .line 963
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setBatteryChangedReceiver(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)V

    .line 964
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;

    invoke-direct {v0, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 965
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;

    invoke-direct {v0, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 968
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerForceExitRequestReceiver()V

    .line 970
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isWearableSupported()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 972
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupWearableFramework()V

    .line 976
    :cond_e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupScreenOffReceiver()V

    .line 978
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 979
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_f

    const-string p1, "CameraActivity"

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 981
    :cond_f
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_10

    const-string p0, "onCreate() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 982
    :cond_10
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 2054
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2055
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2057
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2058
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2059
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 2064
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2068
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onDestroy()V

    .line 2069
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    const-string v0, "onDestroy():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2072
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterForceExitRequestReceiver()V

    .line 2075
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getDownAll()V

    const/4 v0, 0x0

    .line 2083
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2084
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2085
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x1

    .line 2088
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2089
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    :try_start_1
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    if-nez v2, :cond_4

    .line 2091
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2092
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onDestroy()V

    .line 2093
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->onDestroy()V

    .line 2095
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string v1, "mBackgroundWorker.shutdown is Timeout."

    .line 2098
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2099
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    monitor-enter v1

    .line 2100
    :try_start_3
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    if-nez v2, :cond_5

    .line 2101
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onDestroy()V

    .line 2104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->onDestroy()V

    .line 2106
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2109
    :cond_6
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isWearableSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2111
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseWearableFramework()V

    .line 2114
    :cond_7
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_8

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2115
    :cond_8
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_9

    const-string p0, "onDestroy() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2116
    :cond_9
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void

    :catchall_1
    move-exception p0

    .line 2106
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/high16 v0, 0x20000000

    .line 3594
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3595
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->send(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3599
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 2176
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyEvent.getEventTime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2177
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraActivity.onKeyDown() : KEYCODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2178
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "onKeyDown():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2180
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 2184
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 2188
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyLongPress(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2171
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 2193
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyEvent.getEventTime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2194
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraActivity.onKeyUp() : KEYCODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2195
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "onKeyUp():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2197
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 2201
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 2207
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    return v2

    .line 2211
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 4

    .line 1515
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 1516
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1520
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMultiWindowModeChanged() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1523
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    .line 1524
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    if-nez p1, :cond_2

    .line 1526
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchMultiWindow()V

    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 2400
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2403
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2406
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2409
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2412
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2414
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    instance-of v3, p0, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sonyericsson/android/camera/LaunchCondition;->setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    const-string v1, "activity-resumed"

    .line 2420
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v1

    .line 2423
    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-ne v1, v2, :cond_0

    .line 2424
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2427
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchedFromLocked(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-eq v1, v2, :cond_1

    .line 2428
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2431
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    .line 2432
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    :cond_2
    const/4 v0, 0x0

    .line 2434
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCanFinishByScreenOff:Z

    .line 2435
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPause()V
    .locals 5

    .line 2935
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2939
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAudioRecording()V

    .line 2942
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2943
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2946
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 2950
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    return-void

    .line 2954
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause(): isKeyguardLocked() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2955
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2954
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2957
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 2958
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2960
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2961
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getSendPauseEventAndReleaseCameraTaskToken()Ljava/lang/Object;

    move-result-object v1

    .line 2960
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2967
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSkippedOnResume:Z

    if-nez v0, :cond_5

    .line 2968
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "onPause() --> onPauseTasks()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2969
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->onPauseTasks()V

    goto :goto_0

    .line 2971
    :cond_5
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "onPause() --> postAtTime(SendPauseEventAndReleaseCameraTask,500)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2975
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    .line 2976
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSendPauseEventAndReleaseCameraTask:Ljava/lang/Runnable;

    .line 2978
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getSendPauseEventAndReleaseCameraTaskToken()Ljava/lang/Object;

    move-result-object v4

    .line 2976
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 2981
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unRegisterShutDownReceiver()V

    .line 2983
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPauseTasks()V
    .locals 3

    .line 1863
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 1864
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1865
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_1
    const-string v0, "activity-paused"

    .line 1868
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object v0

    .line 1871
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-eq v0, v1, :cond_2

    .line 1873
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1875
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1878
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-eq v0, v1, :cond_3

    .line 1879
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1881
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1884
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1886
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1888
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1890
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1893
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setActivityForeground(Z)V

    .line 1895
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitSetupAllReady()Z

    .line 1897
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1900
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1901
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->doPause()V

    goto :goto_0

    .line 1903
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    const/4 v0, 0x0

    .line 1904
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1906
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 1909
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->stop()V

    .line 1910
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->stop()V

    .line 1912
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1913
    :cond_5
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "onPause() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1914
    :cond_6
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method public onRestart()V
    .locals 3

    .line 1269
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1270
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1271
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1275
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition;->onRestart(ZZ)V

    .line 1276
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_2
    return-void
.end method

.method public final onResume()V
    .locals 6

    const/4 v0, 0x0

    .line 2888
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 2889
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2890
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    .line 2903
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume(): isKeyguardLocked() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2904
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 2903
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2905
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 2906
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 2908
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2909
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2910
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getSendPauseEventAndReleaseCameraTaskToken()Ljava/lang/Object;

    move-result-object v3

    .line 2909
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2912
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setIsInShutdownNow(Z)V

    .line 2913
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerShutDownReceiver()V

    .line 2915
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSkippedOnResume:Z

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2924
    :cond_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_4

    const-string v1, "onResume() --> onResumeTasks()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2926
    :cond_4
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSkippedOnResume:Z

    .line 2927
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->onResumeTasks()V

    goto :goto_2

    .line 2917
    :cond_5
    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSkippedOnResume:Z

    .line 2918
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v3, 0x1e

    goto :goto_1

    :cond_6
    const-wide/16 v3, 0xf

    .line 2920
    :goto_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_7

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() --> postDelayed(mOnResumeTasks,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2922
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2930
    :goto_2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 2

    .line 1228
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1229
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1230
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1234
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 2025
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2026
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2028
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2030
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2031
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndRemoveTask()V

    .line 2032
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 2036
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 2040
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mResetSettingsRequested:Z

    if-eqz v0, :cond_3

    .line 2041
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2042
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    .line 2043
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 2044
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 2045
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mResetSettingsRequested:Z

    .line 2048
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 2049
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_4
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 1532
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 1535
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 1536
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->getUserdata()Ljava/lang/Object;

    move-result-object v1

    .line 1535
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1537
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 2575
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2576
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2583
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz p1, :cond_1

    .line 2584
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public pauseAudioPlayback()V
    .locals 3

    .line 3042
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    .line 3043
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3046
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3047
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->muteSound()V

    return-void
.end method

.method public playSound(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V
    .locals 1
    .param p1    # Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-nez v0, :cond_0

    return-void

    .line 2221
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->play(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    return-void
.end method

.method public postDelayedEvent(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1701
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 4

    .line 745
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareCameraDeviceHandler() launch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v3, "null"

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " capturing-mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 745
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 749
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    if-eqz v0, :cond_2

    .line 750
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 751
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 754
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 755
    invoke-interface {p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->applyCapturingMode()V

    .line 756
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->openCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public readLocationSettings()V
    .locals 1

    .line 3425
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->readLocationSettings(Landroid/content/Context;)V

    return-void
.end method

.method public removeOrienationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
    .locals 0

    .line 3140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportFullyDrawnOnce()V
    .locals 1

    .line 1080
    sget-boolean v0, Lcom/sonyericsson/android/camera/CameraActivity;->sIsReportFullyDrawnAlreadyReported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1081
    sput-boolean v0, Lcom/sonyericsson/android/camera/CameraActivity;->sIsReportFullyDrawnAlreadyReported:Z

    const-string v0, "Report fully drawn"

    .line 1082
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->reportFullyDrawn()V

    :cond_0
    return-void
.end method

.method public requestLaunchAdvancedCamera(Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;Ljava/lang/String;)V
    .locals 8

    .line 2374
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2375
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/CameraActivity$RequestLaunchAdvancedCameraTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    .line 2374
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestPostLazyInitializationTaskExecute()V
    .locals 5

    .line 1683
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    .line 1684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1686
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1684
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1687
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1692
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public requestRestartCameraActivityAfterResetSettings()V
    .locals 1

    const/4 v0, 0x1

    .line 1858
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mResetSettingsRequested:Z

    .line 1859
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return-void
.end method

.method public requestSuspend()V
    .locals 1

    .line 1839
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "requestSuspend():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1840
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1841
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "requestSuspend():[FAILED]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1842
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_2
    return-void
.end method

.method public final restartAutoPowerOffTimer()V
    .locals 1

    .line 3075
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "restartAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3076
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    if-nez v0, :cond_1

    return-void

    .line 3080
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$10;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    .line 3088
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->restartAutoPowerOffTimer()V

    return-void
.end method

.method public setupAutoPowerOffTimeOutDuration(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 991
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 992
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 993
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER_DIALOG:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_0

    .line 995
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_0

    .line 997
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 998
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->ON_LOCKSCREEN:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_0

    .line 1000
    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->DEFAULT:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 1003
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 1004
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getDuration()I

    move-result v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 1005
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getAutoPowerOffHintTextTimeOutDuration()I

    move-result p0

    .line 1006
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object p1

    .line 1003
    invoke-virtual {v0, v1, p0, p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->setTimeOutDuration(IILjava/lang/Object;)V

    return-void
.end method

.method public shouldAddToMediaStore()Z
    .locals 0

    .line 3378
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getAddToMediaStore()Z

    move-result p0

    return p0
.end method

.method protected shouldShowWhenLocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 3467
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3468
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->saveLocalCache()V

    .line 3470
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z
    .locals 0

    .line 3475
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3478
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public stopPlayingSound()V
    .locals 1

    .line 2227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-eqz v0, :cond_0

    .line 2228
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public terminateApplication()V
    .locals 0

    .line 697
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return-void
.end method
