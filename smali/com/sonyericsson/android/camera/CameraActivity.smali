.class public Lcom/sonyericsson/android/camera/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/sonyericsson/cameracommon/activity/TerminateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;,
        Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;,
        Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;,
        Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;,
        Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;,
        Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;,
        Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;,
        Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;,
        Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;,
        Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;,
        Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;
    }
.end annotation


# static fields
.field private static final ASYNC_ACT_TIMEOUT_MILLIS:I = 0xbb8

.field private static final GET_SCREEN_STATUS_DELAY_TIME_MILLIS:I = 0x32

.field public static final INTENT_SUBJECT_CANCEL:Ljava/lang/String; = "cancel"

.field public static final INTENT_SUBJECT_PAUSED:Ljava/lang/String; = "activity-paused"

.field public static final INTENT_SUBJECT_PREPARE:Ljava/lang/String; = "prepare"

.field public static final INTENT_SUBJECT_RESUMED:Ljava/lang/String; = "activity-resumed"

.field public static final INTENT_SUBJECT_START:Ljava/lang/String; = "start"

.field public static final INTENT_SUBJECT_START_SECURE:Ljava/lang/String; = "start-secure"

.field private static final PACKAGE_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field private static final PREPARE_PLATFORM_CAPABILITY_TIMED_OUT_MILLIS:J = 0x7d0L

.field private static final RESULT_AUTO_OFF_TIMER:I = 0x2

.field public static final SETUP_DEVICE_SETUP_WAIT_TIME:I = 0x64

.field private static final SETUP_LAZY_EXECUTION_WAIT_TIME:I = 0xc8

.field private static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final TAG:Ljava/lang/String; = "CameraActivity"

.field private static sIsReportFullyDrawnAlreadyReported:Z = false


# instance fields
.field private MAX_COUNT:I

.field private final REQUESTED_CAMERA_PERMISSIONS:[Ljava/lang/String;

.field private final REQUESTED_PERMISSIONS:[Ljava/lang/String;

.field private isLaunchFromNewIntent:Z

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

.field public mAutoPowerOffTimerImpl:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

.field private mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

.field private mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

.field private mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

.field private mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

.field private mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private mCameraHiddenApiManager:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

.field private mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

.field private mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

.field private mDelayLaunchInternalModeTaskCount:I

.field private mDelayToResume:Z

.field private mDisableMultiWindow:Z

.field private mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

.field private mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

.field private mIsBackDown:Z

.field private mIsCalledOnDestroy:Z

.field private mIsColdBoot:Z

.field private mIsLazyInitializationRunning:Z

.field private mIsNeedToCloseBypassCameraBecauseModeChanged:Z

.field private mIsReceiverResistered:Z

.field private mIsSaveZoomInfoNeeded:Z

.field private mIsScreenRecording:Z

.field private mIsSetupCompleted:Z

.field private final mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

.field private mLastDeterminedOrientationDegree:I

.field private mLastOrientationDegree:I

.field private mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

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

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

.field private mReturnOneShotResult:Z

.field private mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

.field mScreenRecordingCallBack:Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

.field mScreenRecordingDetection:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public static synthetic $r8$lambda$VHnKlyRNLBqX-tuhJIgB92UuDsI(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetMAX_COUNT(Lcom/sonyericsson/android/camera/CameraActivity;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->MAX_COUNT:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundWorker(Lcom/sonyericsson/android/camera/CameraActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryChangedReceiver(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayLaunchInternalModeTask(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayLaunchInternalModeTaskCount(Lcom/sonyericsson/android/camera/CameraActivity;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeotagManager(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCalledOnDestroy(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSetupCompleted(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSetupCompleted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/LaunchConditionImpl;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLazyInitializationiTask(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetupWizardResultListener(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupWizardResultListener:Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoredSettings(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/setting/StoredSettings;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThermalAlertListener(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThermalAlertReceiver(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDelayLaunchInternalModeTaskCount(Lcom/sonyericsson/android/camera/CameraActivity;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCalledOnDestroy(Lcom/sonyericsson/android/camera/CameraActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLazyInitializationRunning(Lcom/sonyericsson/android/camera/CameraActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsScreenRecording(Lcom/sonyericsson/android/camera/CameraActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsScreenRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastDeterminedOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLazyInitializationiTask(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSensorOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetupAllTaskFuture(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThermalAlertReceiver(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishUrgently(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misKeyguardLocked(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRecording(Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlaunchInternalMode(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchInternalMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostEvent(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseCamera(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestFinishCameraActivity(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestFinishCameraActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetup(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupAll(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterScreenOffReceiver(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterScreenOffReceiver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 146
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    const/4 v1, 0x0

    .line 192
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    const/4 v2, 0x0

    .line 245
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    .line 262
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    .line 263
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    .line 265
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    .line 266
    iput v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTaskCount:I

    const/4 v3, 0x7

    .line 267
    iput v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->MAX_COUNT:I

    .line 269
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z

    .line 272
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraActivity;->getStartupPermissions()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    .line 275
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_CAMERA_PERMISSIONS:[Ljava/lang/String;

    .line 302
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    .line 307
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 308
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    .line 309
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    .line 310
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    .line 321
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayToResume:Z

    .line 324
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 327
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 332
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 353
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 358
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    const/4 v0, -0x1

    .line 362
    iput v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    .line 364
    iput v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    .line 366
    iput v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    .line 369
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    .line 373
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    .line 375
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    .line 378
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    .line 380
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    .line 383
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    .line 384
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSetupCompleted:Z

    .line 386
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsScreenRecording:Z

    .line 392
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsBackDown:Z

    .line 466
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimerImpl:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

    .line 468
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$1;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    .line 550
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$2;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    .line 579
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$3;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupWizardResultListener:Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    .line 2702
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$$ExternalSyntheticLambda0;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenRecordingDetection:Ljava/util/function/Consumer;

    .line 2712
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$9;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenRecordingCallBack:Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

    return-void
.end method

.method private abort(Z)V
    .locals 2

    .line 2288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 2296
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2298
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2299
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    if-eqz p1, :cond_1

    .line 2300
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 2302
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    goto :goto_1

    .line 2304
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    goto :goto_1

    .line 2297
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 2308
    :cond_4
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z
    .locals 1

    .line 3443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 3444
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    .line 3447
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3451
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

    .line 2643
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2646
    const-string v0, "com.sonyericsson.android.camera.extra.CAPTURED_URIS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2648
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2649
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method private awaitCreateContentInfoReady()Z
    .locals 0

    .line 2675
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCreateContentInfoTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method private awaitThermalAlertReceiverReady()Z
    .locals 0

    .line 1719
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method private cancelDelayedEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 1804
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeParametersForGoogleAssistant()V
    .locals 4

    .line 3615
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 3616
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3619
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchCameraMode()V

    return-void

    .line 3623
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$13;->$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 p0, 0x2

    if-eq v2, p0, :cond_1

    goto/16 :goto_1

    .line 3656
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_1

    .line 3625
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoCodec()Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    move-result-object v2

    .line 3626
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    if-eqz v2, :cond_a

    if-nez v1, :cond_3

    goto :goto_2

    .line 3633
    :cond_3
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3634
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v2, v1, :cond_6

    .line 3635
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_4

    .line 3636
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    .line 3637
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p0, v1, :cond_5

    .line 3638
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    .line 3640
    :cond_5
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    .line 3642
    :cond_6
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v2, v1, :cond_9

    .line 3643
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_7

    .line 3644
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    .line 3645
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p0, v1, :cond_8

    .line 3646
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_0

    .line 3648
    :cond_8
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 3652
    :cond_9
    :goto_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :goto_1
    return-void

    .line 3629
    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchCameraMode()V

    return-void
.end method

.method private convertRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 3747
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 3748
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3749
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private createBatteryChangedReceiver()V
    .locals 2

    .line 2854
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-void
.end method

.method private createLaunchCondition()V
    .locals 2

    .line 2801
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 2803
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v0

    .line 2804
    new-instance v1, Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;-><init>(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    return-void
.end method

.method private createViewFinder()Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    .locals 4

    .line 1220
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 1221
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUiControlSettings()Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/LaunchCondition;)V

    .line 1223
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1224
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setCameraDevice(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    .line 1226
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask-IA;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private disableOrientation()V
    .locals 1

    .line 3165
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "disableOrientation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3166
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 3167
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 3168
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_1
    return-void
.end method

.method private doPause()V
    .locals 5

    .line 1965
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->removeOnPreviewStartedListener()V

    .line 1968
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1973
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_1

    .line 1975
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1976
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eqz v0, :cond_1

    .line 1978
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    if-eqz v1, :cond_0

    .line 1979
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->saveZoomSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/LastSettings;)V

    goto :goto_0

    .line 1981
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->clearZoomInfo()V

    .line 1983
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1984
    invoke-interface {v3}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v4

    .line 1983
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->savePreloadSettings(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/LastSettings;Z)V

    .line 1988
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    const/4 v0, 0x0

    .line 1989
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1992
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask-IA;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1994
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v0, :cond_2

    .line 1995
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 1999
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    if-eqz v0, :cond_3

    .line 2000
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 2002
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLazyInitializationiTask:Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;

    if-eqz v0, :cond_4

    .line 2003
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 2006
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    if-eqz v0, :cond_5

    .line 2007
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 2010
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->releaseContentsViewController()V

    .line 2013
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2014
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsReceiverResistered:Z

    .line 2018
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    .line 2021
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 2024
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unmuteSound()V

    .line 2026
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 2029
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableOrientation()V

    .line 2031
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onPause(Z)V

    .line 2037
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2038
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2039
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 2038
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2041
    :cond_7
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onPause()V

    return-void
.end method

.method private doResume()V
    .locals 7

    .line 1355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isCorrectExtraOutputPath()Z

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1356
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0189

    .line 1357
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0188

    .line 1358
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1359
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0f02f2

    .line 1360
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/CameraActivity$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/CameraActivity$7;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 1361
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 1368
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1369
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 1375
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->resume()V

    .line 1378
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableOrientation()V

    .line 1380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchInternalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1381
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1382
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchInternalMode()V

    goto :goto_0

    .line 1384
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayLaunchInternalModeTask:Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    const-wide/16 v4, 0x32

    .line 1385
    invoke-virtual {p0, v0, v4, v5}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 1390
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v4, :cond_3

    .line 1391
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearCachedUserSetting()V

    .line 1395
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1396
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 1395
    invoke-interface {v0, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchCameraMode()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchCameraMode;->isLaunchedByGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1398
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->changeParametersForGoogleAssistant()V

    .line 1402
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1403
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1402
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getBokehSetting(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    if-ne v0, v4, :cond_5

    .line 1405
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v4

    if-ne v0, v4, :cond_5

    .line 1406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-interface {v0, v4}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 1410
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v4, :cond_6

    .line 1411
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->clearZoomInfo()V

    .line 1415
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1416
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 1419
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchAndCapture()Z

    move-result v0

    .line 1420
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v4, v5, :cond_7

    .line 1421
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    goto :goto_1

    .line 1423
    :cond_7
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 1428
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1429
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1430
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v6

    .line 1428
    invoke-virtual {p0, v4, v5, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1431
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v5, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-direct {v5, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setOnPreviewStartedListener(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;)V

    .line 1435
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1437
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->awaitLoadSettingsThread()Z

    .line 1439
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v1, :cond_8

    .line 1440
    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->readLocationSettings(Landroid/content/Context;)V

    .line 1443
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSmartLaunch()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAutoPowerOffTimeOutDuration(Z)V

    .line 1446
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoPowerOffTimer()V

    .line 1448
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onResume(Z)V

    .line 1451
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableFpsLimitation()V

    .line 1454
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updatePreviewLayoutParams()V

    .line 1456
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1457
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1458
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v1, v2, :cond_a

    .line 1459
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitCreateContentInfoReady()Z

    .line 1463
    :cond_a
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1465
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1467
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1471
    :cond_b
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    .line 1472
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setView(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1474
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->NONE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 1475
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getGoogleAssistantSelfTimer()I

    move-result v2

    if-lez v2, :cond_c

    .line 1476
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    goto :goto_2

    .line 1477
    :cond_c
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isGoogleAssistantLaunchOnly()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1478
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1479
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;->RECORD:Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 1482
    :cond_d
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 1485
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v5, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1482
    invoke-virtual {v2, v4, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1490
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne v0, v1, :cond_f

    .line 1491
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1493
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    .line 1494
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    goto :goto_3

    .line 1496
    :cond_e
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    .line 1497
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 1503
    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    if-nez v0, :cond_10

    .line 1504
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchMultiWindow()V

    .line 1507
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkStartupStatus()V

    .line 1510
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 1511
    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1514
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1515
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1516
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSmartLaunch()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1517
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->screenOff()V

    .line 1518
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    :cond_11
    if-eqz v0, :cond_12

    .line 1523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isAlreadyBcl()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1524
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isGoogleAssistantLaunch()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1526
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1527
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$8;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1539
    :cond_12
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnResumeTask-IA;)V

    .line 1540
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 1544
    :cond_13
    :goto_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestInflateUiComponents()V

    return-void
.end method

.method private enableOrientation()V
    .locals 1

    .line 3156
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "enableOrientation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3157
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    .line 3158
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 3159
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method private finishUrgently()V
    .locals 0

    .line 2849
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2850
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getDownAll()V
    .locals 3

    .line 2168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->release()V

    const/4 v0, 0x0

    .line 2173
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2174
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 2175
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 2176
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->release()V

    .line 2177
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2180
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseSoundPlayer()V

    .line 2183
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v1, :cond_0

    .line 2184
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 2188
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterScreenOffReceiver()V

    .line 2191
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiverReadyTaskFuture:Ljava/util/concurrent/Future;

    .line 2192
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    .line 2193
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method private static getFuture(Ljava/util/concurrent/Future;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)Z"
        }
    .end annotation

    .line 651
    const-string v0, "Failed to get Future."

    const/4 v1, 0x1

    if-nez p0, :cond_0

    return v1

    .line 655
    :cond_0
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-interface {p0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 664
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 662
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 660
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 658
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)I
    .locals 1

    .line 3316
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$13;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0xb4

    goto :goto_0

    :cond_2
    const/16 p1, 0x5a

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 3335
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p1, p0

    .line 3336
    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method private static getStartupPermissions()[Ljava/lang/String;
    .locals 4

    .line 292
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android.permission.RECORD_AUDIO"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method private isAospScreenRecording()Z
    .locals 1

    .line 3771
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraHiddenApiManager:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

    if-eqz v0, :cond_0

    .line 3772
    invoke-virtual {v0, p0}, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->getActiveProjectionInfoName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3773
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraHiddenApiManager:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

    .line 3774
    invoke-virtual {v0, p0}, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->getActiveProjectionInfoName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 3773
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isInteractive()Z
    .locals 1

    .line 3598
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    .line 3599
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .line 3582
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 3583
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3586
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .line 3590
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 3591
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3594
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLaunchAndCapture()Z
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isQuickLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1604
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRecording()Z
    .locals 0

    .line 2417
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p0, :cond_0

    .line 2418
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 1

    .line 2703
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2704
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsScreenRecording:Z

    .line 2705
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "ScreenRecording detect in active"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2707
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsScreenRecording:Z

    .line 2708
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "ScreenRecording detect stop"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private launchInternalMode()V
    .locals 5

    .line 1571
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "launchInternalMode E:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1573
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchInternalMode()I

    move-result v1

    aget-object v0, v0, v1

    .line 1574
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchInternalMode()V

    .line 1576
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchInternalCallingCapturingMode()I

    move-result v2

    aget-object v1, v1, v2

    .line 1577
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearLaunchInternalCallingCapturingMode()V

    .line 1578
    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->MODE_WHITE_LIST:Ljava/util/List;

    .line 1579
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1580
    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$13;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v1, 0x3

    if-eq v3, v1, :cond_2

    .line 1597
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Bad launch internalMode :"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1592
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1593
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/16 v3, 0x10

    .line 1592
    invoke-static {p0, v3, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void

    .line 1587
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1588
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    const/16 v3, 0x11

    .line 1587
    invoke-static {p0, v3, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void

    .line 1582
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1583
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    const/16 v3, 0x12

    .line 1582
    invoke-static {p0, v3, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    return-void
.end method

.method private launchMultiWindow()V
    .locals 4

    .line 1641
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launch multi window mode activity "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1642
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    const/4 v0, 0x0

    .line 1643
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mReturnOneShotResult:Z

    .line 1644
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1645
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/MultiWindowActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1646
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, "SomcCamera not support multi window mode, intent :["

    if-nez v1, :cond_4

    .line 1647
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotPhoto()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1648
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1649
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1650
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1654
    :cond_2
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1656
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    .line 1660
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotVideo()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotPhoto()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1663
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 1665
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void

    :cond_6
    :goto_0
    const/high16 v1, 0x2000000

    .line 1669
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1670
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start multi window activity, intent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1672
    :cond_7
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1673
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void
.end method

.method private logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V
    .locals 2

    .line 3407
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->-$$Nest$fgetmPerformanceIds(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 3408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 3410
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3413
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " is called"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 3411
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is called:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V
    .locals 1

    .line 3424
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " FINISH."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3426
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "End "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 3427
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->-$$Nest$fgetmPerformanceIds(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 3429
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    if-ne p2, p0, :cond_1

    .line 3430
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    :cond_1
    return-void
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PERFORMANCE] [TIME = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [CameraActivity] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 157
    const-string v0, "TraceLog"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private muteSound()V
    .locals 3

    .line 3040
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 3042
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    .line 3044
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "muteSound: success"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 3046
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

.method private notifyActivityResultListeners(IILandroid/content/Intent;)V
    .locals 1

    .line 2625
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 2626
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    if-eqz v0, :cond_0

    .line 2628
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2629
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2632
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2633
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method private notifyActivityState(Ljava/lang/String;)V
    .locals 5

    .line 2400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2401
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x1b

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2402
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2403
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 2404
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2407
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2413
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private notifyLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .locals 2

    .line 3228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p1, v0, :cond_0

    return-void

    .line 3230
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p1, v0, :cond_1

    return-void

    .line 3233
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ORIENTATION : Layout orientation(sensor) is changed from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3236
    :cond_2
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 3237
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

    .line 3238
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;->onLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private postEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 1796
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
    .locals 2

    .line 2476
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p0, :cond_0

    .line 2477
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private registerForceExitRequestReceiver()V
    .locals 3

    .line 2728
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "registerForceExitRequestReceiver()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2731
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2732
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v2, 0x2

    .line 2733
    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2735
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2736
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2738
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    .line 2739
    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private registerHomeKeyEventReceiver()V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    if-nez v0, :cond_0

    .line 1100
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    .line 1101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1102
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private declared-synchronized registerScreenOffReceiver()V
    .locals 2

    monitor-enter p0

    .line 1067
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    if-nez v0, :cond_0

    .line 1068
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    .line 1069
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1070
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerScreenRecordingCallback()V
    .locals 3

    .line 2682
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 2683
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenRecordingDetection:Ljava/util/function/Consumer;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addScreenRecordingCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I

    .line 2687
    :cond_0
    new-instance v0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

    invoke-direct {v0}, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraHiddenApiManager:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

    .line 2688
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenRecordingCallBack:Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->addMediaProjectionWatcherCallback(Landroid/content/Context;Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;)V

    .line 2689
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAospScreenRecording()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsScreenRecording:Z

    .line 2690
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenRecording default status is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsScreenRecording:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private registerShutDownReceiver()V
    .locals 2

    .line 1083
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    if-nez v0, :cond_0

    .line 1084
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    .line 1085
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1086
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1087
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .line 2046
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    if-eqz v0, :cond_0

    .line 2047
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->disableFpsLimitation()V

    .line 2048
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 2049
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeVirtualCamera()V

    .line 2050
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 2051
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    goto :goto_0

    .line 2056
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    :goto_0
    return-void
.end method

.method private releaseSoundPlayer()V
    .locals 1

    .line 2275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-eqz v0, :cond_0

    .line 2276
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->release()V

    const/4 v0, 0x0

    .line 2277
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    :cond_0
    return-void
.end method

.method private requestFinishCameraActivity()V
    .locals 2

    .line 1849
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "requestFinishCameraActivity()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1851
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1852
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private requestInflateUiComponents()V
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->requestInflate(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private setBrightness(F)V
    .locals 1

    .line 3730
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3731
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3732
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .locals 0

    .line 3297
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)I

    move-result p1

    .line 3298
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    .line 3299
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    .line 3300
    iput p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    return-void
.end method

.method private setup()V
    .locals 8

    .line 796
    const-string/jumbo v0, "setup() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launch_activity_with_cancel_animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {p0, v2, v2, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->overrideActivityTransition(III)V

    .line 808
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    move-result-object v0

    .line 810
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 811
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "PlatformCapability is not prepared yet"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 812
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->TIMED_OUT:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    if-eq v0, v1, :cond_4

    .line 814
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Retry preparing PlatformCapability"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 815
    :cond_3
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$4;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->prepareAsync(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    .line 823
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    .line 827
    :cond_4
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_5

    .line 829
    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->setDeviceError(Z)V

    .line 830
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0174

    .line 831
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0f0177

    .line 832
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 833
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f02f2

    .line 834
    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/CameraActivity$5;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 835
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 842
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 843
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 844
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 849
    :cond_5
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_6

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 852
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 859
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 860
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 863
    const-string v0, "AsyncAct"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v0, v1, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v2

    .line 867
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    instance-of v7, p0, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    invoke-virtual {v1, v3, v4, v0, v7}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZZ)V

    .line 871
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 873
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 874
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v6

    .line 876
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->setOneShotCallerInfo(Ljava/lang/String;)V

    .line 879
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    .line 881
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v0, v1, :cond_a

    .line 882
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 884
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_3

    .line 886
    :cond_a
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v0, v1, :cond_b

    goto :goto_2

    .line 892
    :cond_b
    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v0, v1, :cond_c

    .line 893
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 895
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_3

    .line 898
    :cond_c
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 900
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_3

    .line 888
    :cond_d
    :goto_2
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 890
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 906
    :goto_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 908
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 909
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 910
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOutput()Landroid/net/Uri;

    move-result-object v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 911
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getVideoQualityConfigurations()Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v7

    .line 907
    invoke-interface {v0, v1, v3, v4, v7}, Lcom/sonyericsson/android/camera/setting/UserSettings;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    .line 913
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 915
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 916
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    goto :goto_4

    .line 918
    :cond_e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 921
    :goto_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v1, v3, :cond_f

    .line 922
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v5

    goto :goto_5

    :cond_f
    move v1, v2

    .line 925
    :goto_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 926
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 925
    invoke-virtual {v3, p0, v0, v4, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preloadCamera(Landroid/content/Context;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 927
    new-instance v0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;

    invoke-direct {v1, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl-IA;)V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 933
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupCoreInstance()V

    .line 936
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onCreate(Landroid/content/Context;)V

    .line 939
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 948
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageReadable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 949
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_10

    .line 950
    const-string v0, "StorageActivated was already finished."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 952
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;

    invoke-direct {v1, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    goto :goto_6

    .line 954
    :cond_11
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_12

    .line 955
    const-string v0, "StorageActivated was not finished yet."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 957
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity$6;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 983
    :goto_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createBatteryChangedReceiver()V

    .line 984
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setBatteryChangedReceiver(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)V

    .line 985
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;

    invoke-direct {v1, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 986
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;

    invoke-direct {v1, p0, v6}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnCreateTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 989
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerForceExitRequestReceiver()V

    .line 990
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerScreenRecordingCallback()V

    .line 992
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSetupCompleted:Z

    .line 993
    const-string/jumbo p0, "setup() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method private setupAll()V
    .locals 2

    .line 1211
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 1214
    new-instance v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    return-void
.end method

.method private setupCoreInstance()V
    .locals 11

    .line 1255
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "invoked setupCoreInstance()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1258
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/LaunchCondition;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1261
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createViewFinder()Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    .line 1262
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 1265
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1270
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v8

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 1271
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v9

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1272
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v2

    xor-int/lit8 v10, v2, 0x1

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera/view/UserEventHandler;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/MessageSettings;Z)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 1273
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1274
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->start()V

    .line 1275
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1276
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getTouchEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1277
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getTouchEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->start()V

    .line 1278
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1279
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getVirtualKeyEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;->start()V

    .line 1280
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mUserEventHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    .line 1281
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomEventDispatcher()Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->start()V

    .line 1286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->setDependencies(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method

.method private unRegisterHomeKeyEventReceiver()V
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1110
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mHomeKeyEventReceiver:Lcom/sonyericsson/android/camera/CameraActivity$HomeKeyEventReceiver;

    :cond_0
    return-void
.end method

.method private unRegisterShutDownReceiver()V
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1094
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutDownReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ShutDownReceiver;

    :cond_0
    return-void
.end method

.method private unmuteSound()V
    .locals 1

    .line 3057
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 3059
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 3060
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "unmuteSound: success"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 3062
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "unmuteSound: fail"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterForceExitRequestReceiver()V
    .locals 2

    .line 2744
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unregisterForceExitRequestReceiver()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2745
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2746
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2747
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceExitRequestReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;

    .line 2749
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 2750
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2751
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    :cond_2
    return-void
.end method

.method private declared-synchronized unregisterScreenOffReceiver()V
    .locals 1

    monitor-enter p0

    .line 1076
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1078
    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterScreenRecordingCallback()V
    .locals 2

    .line 2694
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 2695
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenRecordingDetection:Ljava/util/function/Consumer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeScreenRecordingCallback(Ljava/util/function/Consumer;)V

    .line 2698
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraHiddenApiManager:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenRecordingCallBack:Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->removeMediaProjectionWatcherCallback(Landroid/content/Context;Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;)V

    const/4 v0, 0x0

    .line 2699
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsScreenRecording:Z

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 2283
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "call abort()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 2284
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort(Z)V

    return-void
.end method

.method public addOrienationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
    .locals 0

    .line 3188
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public awaitSetupAllReady()Z
    .locals 0

    .line 1134
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSetupAllTaskFuture:Ljava/util/concurrent/Future;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method public awaitViewFinderReady()Z
    .locals 2

    .line 1697
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 1698
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getFuture(Ljava/util/concurrent/Future;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1699
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinderInitializationTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 1701
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
    .locals 2

    .line 3496
    invoke-static {p0, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3497
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3498
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3501
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraActivity$11;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    .line 3508
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public checkAndRequestSelfPermissions(I[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)Z
    .locals 2

    .line 3526
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->checkAndRequestSelfPermissions(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3529
    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$12;

    invoke-direct {v1, p0, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity$12;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;[Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$PermissionCheckCallback;)V

    .line 3568
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    :cond_0
    return v0
.end method

.method public clearMaxBrightness()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 3726
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setBrightness(F)V

    return-void
.end method

.method public final disableAutoPowerOffTimer()V
    .locals 1

    .line 3094
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "disableAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3095
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideAutoPowerOffHintText()V

    .line 3096
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->disableAutoPowerOffTimer()V

    return-void
.end method

.method public disablePreviewScreenshots()V
    .locals 1

    const/4 v0, 0x0

    .line 1001
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setRecentsScreenshotEnabled(Z)V

    return-void
.end method

.method public disableSideSense()V
    .locals 0

    .line 3671
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->stop()V

    return-void
.end method

.method public final enableAutoPowerOffTimer()V
    .locals 1

    .line 3086
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "enableAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3087
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->enableAutoPowerOffTimer()V

    return-void
.end method

.method public enableSideSense()V
    .locals 0

    .line 3667
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->start()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 2830
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2831
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2833
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishAndKillProcess()V
    .locals 0

    .line 2457
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareFinish()V

    .line 2458
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public finishOneShot(Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;)V
    .locals 4

    .line 1173
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finishOneShot: result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1176
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    .line 1178
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1179
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearOneshotUserSetting()V

    .line 1181
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1182
    iget-object v2, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1183
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1184
    iget p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1185
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    goto :goto_1

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShotPhoto()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearOneshotUserSetting()V

    .line 1189
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1190
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->isSuccess:Z

    if-eqz v0, :cond_2

    .line 1191
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

    :cond_2
    const/4 p1, 0x0

    .line 1198
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    goto :goto_0

    .line 1202
    :cond_3
    iget p1, p1, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 1204
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public getAutoPowerOffTimerController()Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;
    .locals 0

    .line 3140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimerImpl:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;

    return-object p0
.end method

.method public getBatteryLevel()I
    .locals 0

    .line 3574
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .locals 0

    .line 2432
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraApplication;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    return-object p0
.end method

.method public getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 0

    .line 3147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p0
.end method

.method public getLastDetectedOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .locals 0

    .line 3389
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0
.end method

.method public getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .locals 3

    .line 3248
    iget v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3250
    iget v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3253
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    .line 3258
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v1

    rsub-int v1, v1, 0x168

    add-int/2addr v0, v1

    .line 3259
    rem-int/lit16 v0, v0, 0x168

    .line 3264
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-eq v1, v2, :cond_3

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x1e

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p0, 0x3c

    :goto_1
    rsub-int/lit8 v1, p0, 0x5a

    add-int/lit8 v2, p0, 0x5a

    .line 3279
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3280
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    :cond_4
    rsub-int v1, p0, 0x10e

    .line 3282
    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3283
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    :cond_5
    add-int/lit16 p0, p0, 0x10e

    .line 3285
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/CameraActivity;->in(III)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 3286
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0

    .line 3289
    :cond_6
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0
.end method

.method public getOrientation()I
    .locals 3

    .line 3347
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLastDetectedOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 3348
    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    if-ne v0, v1, :cond_0

    .line 3349
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v0

    .line 3352
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$13;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x5

    if-eq p0, v1, :cond_3

    .line 3363
    sget-object p0, Lcom/sonyericsson/android/camera/CameraActivity$13;->$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType:[I

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->ordinal()I

    move-result v1

    aget p0, p0, v1

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 1

    .line 3741
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3742
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->convertRect(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .locals 3

    .line 1294
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-nez v0, :cond_3

    .line 1295
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getRealSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 1296
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 1297
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 1296
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 1297
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x40155555

    sub-float v0, v1, v0

    .line 1298
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1299
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v1, v0

    .line 1300
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 1301
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_0

    :cond_1
    const v0, 0x3fe38e39

    sub-float/2addr v1, v0

    .line 1302
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 1303
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    goto :goto_0

    .line 1305
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->NOT_DEFINED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 1308
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-object p0
.end method

.method public getSensorOrientationDegree()I
    .locals 2

    .line 3379
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ORIENTATION:getSensorOrientationDegree = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3381
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I

    return p0
.end method

.method public getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;
    .locals 0

    .line 3397
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method public getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2818
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    return-object p0
.end method

.method public isAllowToUseLocation()Z
    .locals 1

    .line 3762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3763
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

    .line 3578
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isAlreadyBcl()Z

    move-result p0

    return p0
.end method

.method public isAlreadyHighTemperature()Z
    .locals 1

    .line 1731
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isAlreadyHighTemperature()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDelayToResume()Z
    .locals 0

    .line 2863
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayToResume:Z

    return p0
.end method

.method public isDeviceInSecurityLock()Z
    .locals 2

    .line 2325
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2330
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2334
    :goto_0
    const-string/jumbo v1, "start-secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2335
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isSecurePhotoLaunchedByIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isInLockTaskMode()Z
    .locals 1

    .line 3436
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3437
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

.method public isLazyInitializationRunning()Z
    .locals 0

    .line 2453
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z

    return p0
.end method

.method public isScreenRecording()Z
    .locals 0

    .line 3780
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsScreenRecording:Z

    return p0
.end method

.method public isThermalWarningExtraState()Z
    .locals 1

    .line 1757
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
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

    .line 1771
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
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

    .line 1744
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitThermalAlertReceiverReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    if-eqz p0, :cond_0

    .line 1745
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isWarningState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public launchCameraSettings(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 2487
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    .line 2488
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    .line 2490
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2491
    const-class v2, Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2492
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 2493
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2492
    const-string v3, "capturing_mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2494
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2495
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getOneShotMode()Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2494
    const-string v3, "OneShotMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2496
    const-string v2, "DeviceInSecurityLock"

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2497
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2498
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result v2

    .line 2497
    const-string/jumbo v3, "shouldNotRemainRecentTask"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2499
    const-string/jumbo v2, "valueSelect"

    .line 2500
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2499
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2502
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAllowToUseLocation()Z

    move-result p1

    const-string v2, "allowUseLocation"

    if-eqz p1, :cond_0

    .line 2503
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2505
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2508
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOutput()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2511
    const-string p1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2512
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v2, -0x1

    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2514
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.durationLimit"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2516
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2520
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x18

    invoke-virtual {p0, v1, v0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 2525
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult: requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2527
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2528
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 2530
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityResultListeners(IILandroid/content/Intent;)V

    :cond_1
    return-void

    .line 2535
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2536
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->reconstructLocalCache(Z)V

    .line 2537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setNewIntentFromActivity(Z)V

    .line 2540
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityResultListeners(IILandroid/content/Intent;)V

    .line 2542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onActivityResult(I)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2616
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_WIFI_RESULT:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    if-nez p3, :cond_4

    .line 2581
    const-string p0, "null intent was received unexpectedly"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    .line 2585
    const-string p1, "capturing_mode"

    .line 2586
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2587
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 2588
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    .line 2589
    const-string p2, "ResetSettings"

    .line 2590
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 2591
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "resetRequested: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    if-nez p2, :cond_6

    .line 2595
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->writePauseTime()V

    .line 2596
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    .line 2599
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0

    .line 2601
    :cond_6
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, p2, :cond_8

    .line 2602
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0

    .line 2607
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->writePauseTime()V

    .line 2608
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    .line 2611
    :cond_8
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupAutoPowerOffTimeOutDuration(Z)V

    .line 2612
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    goto :goto_1

    .line 2565
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2566
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 2567
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2568
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 2567
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v0

    .line 2566
    invoke-virtual {p1, p3, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendODMDualCameraEffectEvent(Landroid/content/Context;Ljava/lang/String;)V

    if-ne p2, v1, :cond_9

    .line 2570
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_1

    :pswitch_4
    if-ne p2, v1, :cond_9

    .line 2575
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 2555
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2556
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 2557
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 2558
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 2559
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 2558
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v0

    .line 2556
    invoke-virtual {p1, p3, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPortraitSelfieEvent(Landroid/content/Context;Ljava/lang/String;)V

    if-ne p2, v1, :cond_9

    .line 2561
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 2547
    :pswitch_6
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addExternalCameraAppContent(Landroid/content/Intent;)V

    .line 2548
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendDualCameraEffectEvent(Landroid/content/Context;)V

    if-ne p2, v1, :cond_9

    .line 2550
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_9
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 2319
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "onCancel finish()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2320
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 762
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 763
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 764
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 766
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 767
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createLaunchCondition()V

    const-wide/16 v0, 0x7d0

    .line 770
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->awaitPrepare(JLjava/util/concurrent/TimeUnit;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    move-result-object p1

    .line 773
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->PERMISSION_DENIED:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 780
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_CAMERA_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 787
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setup()V

    :goto_1
    const/4 p1, 0x1

    .line 789
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 790
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4

    const-string p1, "CameraActivity"

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 791
    :cond_4
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "onCreate() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 792
    :cond_5
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 2092
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2093
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2095
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2096
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2097
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 2102
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2106
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onDestroy()V

    .line 2107
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    const-string v0, "onDestroy():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2110
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterForceExitRequestReceiver()V

    .line 2111
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterScreenRecordingCallback()V

    .line 2114
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getDownAll()V

    const/4 v0, 0x0

    .line 2122
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x1

    .line 2127
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBackgroundWorker:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2128
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2129
    :try_start_1
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    if-nez v2, :cond_4

    .line 2130
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2131
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onDestroy()V

    .line 2132
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->onDestroy()V

    .line 2134
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

    .line 2137
    :catch_0
    const-string v1, "mBackgroundWorker.shutdown is Timeout."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 2138
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    monitor-enter v1

    .line 2139
    :try_start_3
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    if-nez v2, :cond_5

    .line 2140
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z

    .line 2142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onDestroy()V

    .line 2143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->onDestroy()V

    .line 2145
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2148
    :cond_6
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_7

    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2149
    :cond_7
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_8

    const-string p0, "onDestroy() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2150
    :cond_8
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void

    :catchall_1
    move-exception p0

    .line 2145
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/high16 v0, 0x20000000

    .line 3604
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3605
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->send(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3609
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onHomeKeyEvent()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 2207
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyEvent.getEventTime() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2208
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraActivity.onKeyDown() : KEYCODE="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2209
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "onKeyDown():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    .line 2213
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsBackDown:Z

    .line 2216
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 2220
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 2224
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyLongPress(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2202
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 2229
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyEvent.getEventTime() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2230
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraActivity.onKeyUp() : KEYCODE="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2231
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "onKeyUp():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2233
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    .line 2237
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->sendKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_5

    if-ne p1, v3, :cond_4

    .line 2239
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsBackDown:Z

    :cond_4
    return v1

    :cond_5
    if-ne p1, v3, :cond_7

    .line 2245
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsBackDown:Z

    if-nez p1, :cond_6

    return v1

    .line 2247
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    .line 2248
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsBackDown:Z

    return v1

    .line 2252
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 1614
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 1615
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1619
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMultiWindowModeChanged() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1622
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    .line 1623
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDisableMultiWindow:Z

    if-nez p1, :cond_2

    .line 1625
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->launchMultiWindow()V

    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .line 2340
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onNewIntent() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2346
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setIntent(Landroid/content/Intent;)V

    return-void

    .line 2349
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSetupCompleted:Z

    if-nez v0, :cond_2

    .line 2350
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setup()V

    :cond_2
    const/4 v0, 0x1

    .line 2353
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    .line 2354
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .line 2356
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v2, v3, :cond_3

    .line 2357
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearCachedUserSetting()V

    .line 2359
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2361
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    if-ne v2, v3, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 2364
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    instance-of v5, p0, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->setup(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZZ)V

    .line 2367
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v2

    .line 2368
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v2, v3, :cond_5

    .line 2369
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2371
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_2

    .line 2373
    :cond_5
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v2, v3, :cond_8

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v2, v3, :cond_6

    goto :goto_1

    .line 2379
    :cond_6
    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v2, v3, :cond_7

    .line 2380
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2382
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_2

    .line 2385
    :cond_7
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2387
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    goto :goto_2

    .line 2375
    :cond_8
    :goto_1
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2377
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2390
    :goto_2
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    if-eq v1, v2, :cond_9

    .line 2391
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 2394
    :cond_9
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setIntent(Landroid/content/Intent;)V

    .line 2395
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_a

    const-string p0, "onNewIntent() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final onPause()V
    .locals 6

    const/4 v0, 0x0

    .line 2935
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->isLaunchFromNewIntent:Z

    .line 2937
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2938
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2940
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCheckAndRequestSelfPermissionsTask:Ljava/lang/Runnable;

    .line 2946
    :cond_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->overrideActivityTransition(III)V

    .line 2950
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2954
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopAudioRecording()V

    .line 2956
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unRegisterHomeKeyEventReceiver()V

    .line 2957
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2958
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2961
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 2965
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2966
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    :cond_2
    return-void

    .line 2971
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2972
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "onPause() : E"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2973
    :cond_4
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v3, "CameraActivity"

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2976
    :cond_5
    const-string v1, "activity-paused"

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 2978
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    .line 2979
    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v4, :cond_6

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v4, :cond_6

    .line 2981
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2983
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2986
    :cond_6
    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-eq v1, v4, :cond_7

    .line 2987
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2989
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2992
    :cond_7
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2994
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2996
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 2998
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 3001
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setActivityForeground(Z)V

    .line 3003
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->awaitSetupAllReady()Z

    .line 3005
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3008
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3009
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->doPause()V

    goto :goto_0

    .line 3011
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseCamera()V

    .line 3012
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCurrentCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 3014
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->clearMessageDialog()V

    .line 3017
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->stop()V

    .line 3018
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSideTouchEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;->stop()V

    .line 3020
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->unRegisterShutDownReceiver()V

    .line 3022
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v3, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 3023
    :cond_9
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "onPause() : X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3024
    :cond_a
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 3026
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 1343
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v1, "CameraActivity"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1344
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1345
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onRestart()V

    .line 1351
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_2
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 2868
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayToResume:Z

    if-eqz v0, :cond_0

    .line 2869
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2872
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsColdBoot:Z

    .line 2873
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsSaveZoomInfoNeeded:Z

    .line 2875
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->setGmsMatterSupportChecked(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2877
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2878
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_1
    const/16 v1, 0xc

    .line 2881
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z

    move-result v1

    .line 2884
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2885
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    .line 2889
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2890
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResume() : E "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2892
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAospScreenRecording()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsScreenRecording:Z

    .line 2893
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ScreenRecording default status is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsScreenRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2894
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setIsInShutdownNow(Z)V

    .line 2895
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerShutDownReceiver()V

    .line 2896
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerScreenOffReceiver()V

    .line 2897
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->registerHomeKeyEventReceiver()V

    .line 2899
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v2, "CameraActivity"

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2901
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setActivityForeground(Z)V

    .line 2902
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->onResume(ZZ)V

    if-nez v1, :cond_6

    .line 2906
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->doResume()V

    goto :goto_0

    .line 2908
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_8

    .line 2910
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "start clearExtraOperation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2912
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->clearExtraOperation()V

    .line 2916
    :cond_8
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2919
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 2922
    const-string v0, "activity-resumed"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 2924
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;->start()V

    .line 2926
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2927
    :cond_9
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "onResume() : X"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2928
    :cond_a
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 2930
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onScreenOff()V
    .locals 1

    .line 1040
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 1054
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setShowWhenLocked(Z)V

    .line 1055
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setTurnScreenOn(Z)V

    .line 1057
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1059
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    goto :goto_0

    .line 1060
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1062
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 2

    .line 1313
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v1, "CameraActivity"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 1314
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1315
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1319
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 2071
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v1, "CameraActivity"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    .line 2072
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 2074
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2076
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->hasDeviceError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2077
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishAndRemoveTask()V

    .line 2078
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 2082
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 2086
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 2087
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)V

    :cond_3
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 1631
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1633
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 1634
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 1635
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->getUserdata()Ljava/lang/Object;

    move-result-object v1

    .line 1634
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1636
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

    .line 2437
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2438
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2445
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    if-eqz p0, :cond_1

    .line 2446
    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_GEO_TAG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public pauseAudioPlayback()V
    .locals 3

    .line 3072
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3073
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3076
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3077
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->muteSound()V

    return-void
.end method

.method public playSound(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V
    .locals 0

    .line 2258
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-nez p0, :cond_0

    return-void

    .line 2262
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->play(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    return-void
.end method

.method public postDelayedEvent(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1800
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 1

    .line 745
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    return-object p0
.end method

.method public prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 4

    .line 725
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepareCameraDeviceHandler() launch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 726
    const-string v3, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " capturing-mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 727
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 725
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 729
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    if-eqz v0, :cond_2

    .line 730
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mIsNeedToCloseBypassCameraBecauseModeChanged:Z

    .line 731
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->closeCamera()V

    .line 734
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 735
    invoke-interface {p3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->applyCapturingMode()V

    .line 736
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->openCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeOrienationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
    .locals 0

    .line 3192
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportFullyDrawnOnce()V
    .locals 2

    .line 1157
    sget-boolean v0, Lcom/sonyericsson/android/camera/CameraActivity;->sIsReportFullyDrawnAlreadyReported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1158
    sput-boolean v0, Lcom/sonyericsson/android/camera/CameraActivity;->sIsReportFullyDrawnAlreadyReported:Z

    .line 1159
    const-string v0, "Report fully drawn"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->reportFullyDrawn()V

    .line 1163
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 1163
    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method public requestPostLazyInitializationTaskExecute()V
    .locals 3

    .line 1782
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    .line 1783
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    .line 1785
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1783
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1786
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v0, v1, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1791
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/CameraActivity$PostDeviceInitializationTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public requestStartFeatureListActivity()V
    .locals 3

    .line 3753
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3754
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3755
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 3756
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->shouldNotRemainRecentTask()Z

    move-result v1

    .line 3755
    const-string v2, "extra_key_finish_when_screen_off"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x17

    .line 3757
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3758
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;->NEW_FEATURE_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendShowFeatureListEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;)V

    return-void
.end method

.method public requestSuspend()V
    .locals 1

    .line 1946
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "requestSuspend():[IN]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1947
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1948
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "requestSuspend():[FAILED]"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1949
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_2
    return-void
.end method

.method public final restartAutoPowerOffTimer()V
    .locals 1

    .line 3105
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "restartAutoPowerOffTimer: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 3106
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    if-nez v0, :cond_1

    return-void

    .line 3110
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$10;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->postEvent(Ljava/lang/Runnable;)V

    .line 3118
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->restartAutoPowerOffTimer()V

    return-void
.end method

.method public setDelayToResume(Z)V
    .locals 2

    .line 2858
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDelayToResume "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2859
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayToResume:Z

    return-void
.end method

.method public setMaxBrightness()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3718
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setBrightness(F)V

    return-void
.end method

.method public setupAutoPowerOffTimeOutDuration(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1017
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 1018
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1019
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER_DIALOG:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_0

    .line 1021
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_0

    .line 1023
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isLaunchedAsInSecure()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchConditionImpl;

    .line 1024
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditionImpl;->isQuickLaunchOnFirstLaunch()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1025
    :cond_3
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->ON_LOCKSCREEN:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    goto :goto_0

    .line 1027
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->DEFAULT:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 1030
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    .line 1031
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getDuration()I

    move-result v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 1032
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->getAutoPowerOffHintTextTimeOutDuration()I

    move-result p0

    .line 1033
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object p1

    .line 1030
    invoke-virtual {v0, v1, p0, p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->setTimeOutDuration(IILjava/lang/Object;)V

    return-void
.end method

.method protected shouldShowWhenLocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 3457
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->saveLocalCache()V

    .line 3460
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z
    .locals 0

    .line 3465
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/CameraActivity;->addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3468
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public stopPlayingSound()V
    .locals 0

    .line 2268
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-eqz p0, :cond_0

    .line 2269
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public terminateApplication()V
    .locals 0

    .line 681
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    return-void
.end method
