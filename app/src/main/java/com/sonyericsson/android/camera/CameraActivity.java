package com.sonyericsson.android.camera;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.app.KeyguardManager;
import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import com.sonyericsson.android.camera.configuration.IntentReader;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveLaunch;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.VideoCodec;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.controller.StateMachine;
import com.sonyericsson.android.camera.controller.StateMachine$OneShotResult;
import com.sonyericsson.android.camera.controller.StateMachine$StartupAction;
import com.sonyericsson.android.camera.controller.StateMachine$StaticEvent;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.controller.launcher.ApplicationLauncher;
import com.sonyericsson.android.camera.device.CameraDeviceHandler;
import com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraSessionId;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$MeasurementKey;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.setting.SettingsFactory;
import com.sonyericsson.android.camera.setting.StoredSettings;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.UserEventHandler;
import com.sonyericsson.android.camera.view.UserEventHandler$KeyEventDispatcher;
import com.sonyericsson.android.camera.view.UserEventHandler$SideTouchEventDispatcher;
import com.sonyericsson.android.camera.view.ViewFinder;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.ViewFinderImpl;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver$ScreenAspect;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.modeselector.CapturingModeUtil;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.cameracommon.activity.OnActivityResultListener;
import com.sonyericsson.cameracommon.activity.TerminateListener;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.location.LocationSettingsReader;
import com.sonyericsson.cameracommon.sound.SoundPlayer;
import com.sonyericsson.cameracommon.sound.SoundPlayer$Type;
import com.sonyericsson.cameracommon.storage.Storage;
import com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver;
import com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver$BatteryChangedReceiverListener;
import com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver;
import com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver$ThermalAlertReceiverListener;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.OneShotUtility;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;
import com.sonyericsson.cameracommon.utility.ProductConfig;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState$AbstractPhotoState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState$AbstractVideoState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface$LifeCycleObserver;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface$PhotoEventObserver;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface$VideoEventObserver;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClient;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class CameraActivity extends Activity implements DialogInterface$OnCancelListener, TerminateListener {
    private static final String ACTION_REQUEST_SOMC_CAMERA_SERVICE = "com.sonymobile.cameracommon.action.REQUEST_SOMC_CAMERA_SERVICE";
    private static final int ASYNC_ACT_TIMEOUT_MILLIS = 3000;
    private static final String CAMERA_COMMON_PACKAGE_NAME = "com.sonymobile.cameracommon";
    public static final String INTENT_SUBJECT_CANCEL = "cancel";
    public static final String INTENT_SUBJECT_PAUSED = "activity-paused";
    public static final String INTENT_SUBJECT_PREPARE = "prepare";
    public static final String INTENT_SUBJECT_RESUMED = "activity-resumed";
    public static final String INTENT_SUBJECT_START = "start";
    public static final String INTENT_SUBJECT_START_SECURE = "start-secure";
    private static final long ON_RESUME_DELAY_NON_SECURE_MILLIS = 15;
    private static final long ON_RESUME_DELAY_SECURE_MILLIS = 30;
    private static final long PREPARE_PLATFORM_CAPABILITY_TIMED_OUT_MILLIS = 2000;
    private static final int RESULT_AUTO_OFF_TIMER = 2;
    private static final long SEND_PAUSE_EVENT_DELAY_MILLIS = 500;
    public static final int SETUP_DEVICE_SETUP_WAIT_TIME = 100;
    private static final int SETUP_LAZY_EXECUTION_WAIT_TIME = 200;
    private static final String TAG = "CameraActivity";
    private static boolean sIsReportFullyDrawnAlreadyReported;
    private SparseArray<OnActivityResultListener> mActivityResultListeners;
    private AutoPowerOffTimer mAutoPowerOffTimer;
    private BatteryChangedReceiver mBatteryChangedReceiver;
    private CameraDeviceHandler mCameraDeviceHandler;
    private CameraDeviceHandler$CameraSessionId mCurrentCameraSessionId;
    private GeotagManager mGeotagManager;
    private boolean mIsCalledOnDestroy;
    private LaunchCondition mLaunchCondition;
    private LocationSettingsReader mLocationSettingsReader;
    private Handler mMainHandler;
    private OrientationEventListener mOrientationEventListener;
    private boolean mResetSettingsRequested;
    private LayoutDependencyResolver$ScreenAspect mScreenAspect;
    private CameraActivity$ScreenOffReceiver mScreenOffReceiver;
    protected StateMachine mStateMachine;
    private Storage mStorage;
    private StoredSettings mStoredSettings;
    private ThermalAlertReceiver mThermalAlertReceiver;
    private UserEventHandler mUserEventHandler;
    private ViewFinder mViewFinder;
    private boolean mReturnOneShotResult = true;
    private boolean mDisableMultiWindow = false;
    private SoundPlayer mSoundPlayer = null;
    private CameraActivity$ShutDownReceiver mShutDownReceiver = new CameraActivity$ShutDownReceiver(this, null);
    private CameraActivity$PostDeviceInitializationTask mPostDeviceInitializationTask = null;
    private CameraActivity$LazyInitializationTask mLazyInitializationiTask = null;
    private WearableBridgeClient mWearableBridgeClient = null;
    private ObserveWearableInterface$LifeCycleObserver mWearableBridgeLifeCycleObserver = null;
    private ObserveWearableInterface$PhotoEventObserver mWearableBridgePhotoEventObserver = null;
    private ObserveWearableInterface$VideoEventObserver mWearableBridgeVideoEventObserver = null;
    private boolean mIsLazyInitializationRunning = true;
    private final String[] REQUESTED_PERMISSIONS = {"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"};
    private ExecutorService mBackgroundWorker = null;
    private Future<?> mThermalAlertReceiverReadyTaskFuture = null;
    private Future<?> mViewFinderInitializationTaskFuture = null;
    private Future<?> mSetupAllTaskFuture = null;
    private Future<?> mCreateContentInfoTaskFuture = null;
    private boolean mIsColdBoot = false;
    private boolean mIsNeedToCloseBypassCameraBecauseModeChanged = false;

    @Nullable
    private KeyguardManager mKeyguardManager = null;
    private boolean mSkippedOnResume = false;
    private CameraActivity$LayoutOrientation mLastDetectedOrientation = CameraActivity$LayoutOrientation.Unknown;
    private final Set<CameraActivity$LayoutOrientationChangedListener> mLayoutOrientationChangedListenerSet = new CopyOnWriteArraySet();
    private int mSensorOrientationDegree = -1;
    private int mLastOrientationDegree = -1;
    private int mLastDeterminedOrientationDegree = -1;
    private boolean mIsReceiverResistered = false;
    private CameraActivity$ForceExitRequestReceiver mForceExitRequestReceiver = null;
    private CameraActivity$CameraActivityFinishBroadcastReceiver mCameraActivityFinishReceiver = null;
    private final UserEventHandler$KeyEventDispatcher mKeyEventDispatcher = new UserEventHandler$KeyEventDispatcher();
    private final UserEventHandler$SideTouchEventDispatcher mSideTouchEventDispatcher = new UserEventHandler$SideTouchEventDispatcher();
    private final Runnable mOnResumeTasks = new CameraActivity$1(this);
    private final Runnable mSendPauseEventAndReleaseCameraTask = new CameraActivity$2(this);
    private ThermalAlertReceiver$ThermalAlertReceiverListener mThermalAlertListener = new CameraActivity$3(this);
    private BatteryChangedReceiver$BatteryChangedReceiverListener mBatteryChangedListener = new CameraActivity$4(this);
    private OnActivityResultListener mSetupWizardResultListener = new CameraActivity$5(this);
    private boolean mCanFinishByScreenOff = true;

    private static boolean in(int i, int i2, int i3) {
        return i >= i2 && i < i3;
    }

    public static final void preload() {
    }

    @Override // android.app.Activity, android.view.Window$Callback
    public boolean onSearchRequested() {
        return false;
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
    }

    protected boolean shouldShowWhenLocked() {
        return false;
    }

    static /* synthetic */ boolean access$100(CameraActivity cameraActivity) {
        return cameraActivity.mSkippedOnResume;
    }

    static /* synthetic */ void access$1000(CameraActivity cameraActivity) {
        cameraActivity.finishUrgently();
    }

    static /* synthetic */ boolean access$102(CameraActivity cameraActivity, boolean z) {
        cameraActivity.mSkippedOnResume = z;
        return z;
    }

    static /* synthetic */ Storage access$1300(CameraActivity cameraActivity) {
        return cameraActivity.mStorage;
    }

    static /* synthetic */ Future access$1402(CameraActivity cameraActivity, Future future) {
        cameraActivity.mSetupAllTaskFuture = future;
        return future;
    }

    static /* synthetic */ ExecutorService access$1500(CameraActivity cameraActivity) {
        return cameraActivity.mBackgroundWorker;
    }

    static /* synthetic */ void access$1900(CameraActivity cameraActivity) {
        cameraActivity.setupAll();
    }

    static /* synthetic */ void access$200(CameraActivity cameraActivity) {
        cameraActivity.onResumeTasks();
    }

    static /* synthetic */ ThermalAlertReceiver access$2000(CameraActivity cameraActivity) {
        return cameraActivity.mThermalAlertReceiver;
    }

    static /* synthetic */ ThermalAlertReceiver access$2002(CameraActivity cameraActivity, ThermalAlertReceiver thermalAlertReceiver) {
        cameraActivity.mThermalAlertReceiver = thermalAlertReceiver;
        return thermalAlertReceiver;
    }

    static /* synthetic */ ThermalAlertReceiver$ThermalAlertReceiverListener access$2100(CameraActivity cameraActivity) {
        return cameraActivity.mThermalAlertListener;
    }

    static /* synthetic */ BatteryChangedReceiver access$2200(CameraActivity cameraActivity) {
        return cameraActivity.mBatteryChangedReceiver;
    }

    static /* synthetic */ ViewFinder access$2900(CameraActivity cameraActivity) {
        return cameraActivity.mViewFinder;
    }

    static /* synthetic */ void access$300(CameraActivity cameraActivity, String str) {
        cameraActivity.notifyActivityState(str);
    }

    static /* synthetic */ void access$3000(CameraActivity cameraActivity) {
        cameraActivity.requestFinishCameraActivity();
    }

    static /* synthetic */ boolean access$3102(CameraActivity cameraActivity, boolean z) {
        cameraActivity.mIsLazyInitializationRunning = z;
        return z;
    }

    static /* synthetic */ GeotagManager access$3200(CameraActivity cameraActivity) {
        return cameraActivity.mGeotagManager;
    }

    static /* synthetic */ CameraActivity$LazyInitializationTask access$3300(CameraActivity cameraActivity) {
        return cameraActivity.mLazyInitializationiTask;
    }

    static /* synthetic */ CameraActivity$LazyInitializationTask access$3302(CameraActivity cameraActivity, CameraActivity$LazyInitializationTask cameraActivity$LazyInitializationTask) {
        cameraActivity.mLazyInitializationiTask = cameraActivity$LazyInitializationTask;
        return cameraActivity$LazyInitializationTask;
    }

    static /* synthetic */ void access$3400(CameraActivity cameraActivity, Runnable runnable) {
        cameraActivity.postEvent(runnable);
    }

    static /* synthetic */ boolean access$3800(CameraActivity cameraActivity) {
        return cameraActivity.mIsCalledOnDestroy;
    }

    static /* synthetic */ boolean access$3802(CameraActivity cameraActivity, boolean z) {
        cameraActivity.mIsCalledOnDestroy = z;
        return z;
    }

    static /* synthetic */ void access$3900(CameraActivity cameraActivity, boolean z) {
        cameraActivity.abort(z);
    }

    static /* synthetic */ CameraDeviceHandler$CameraSessionId access$400(CameraActivity cameraActivity) {
        return cameraActivity.mCurrentCameraSessionId;
    }

    static /* synthetic */ CameraDeviceHandler$CameraSessionId access$402(CameraActivity cameraActivity, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        cameraActivity.mCurrentCameraSessionId = cameraDeviceHandler$CameraSessionId;
        return cameraDeviceHandler$CameraSessionId;
    }

    static /* synthetic */ int access$4202(CameraActivity cameraActivity, int i) {
        cameraActivity.mSensorOrientationDegree = i;
        return i;
    }

    static /* synthetic */ int access$4300(CameraActivity cameraActivity) {
        return cameraActivity.mLastOrientationDegree;
    }

    static /* synthetic */ int access$4302(CameraActivity cameraActivity, int i) {
        cameraActivity.mLastOrientationDegree = i;
        return i;
    }

    static /* synthetic */ int access$4402(CameraActivity cameraActivity, int i) {
        cameraActivity.mLastDeterminedOrientationDegree = i;
        return i;
    }

    static /* synthetic */ void access$4500(CameraActivity cameraActivity, CameraActivity$LayoutOrientation cameraActivity$LayoutOrientation) {
        cameraActivity.notifyLayoutOrientationChanged(cameraActivity$LayoutOrientation);
    }

    static /* synthetic */ boolean access$500(CameraActivity cameraActivity) {
        return cameraActivity.isRecording();
    }

    static /* synthetic */ void access$600(CameraActivity cameraActivity) {
        cameraActivity.releaseCamera();
    }

    static /* synthetic */ CameraDeviceHandler access$700(CameraActivity cameraActivity) {
        return cameraActivity.mCameraDeviceHandler;
    }

    static /* synthetic */ boolean access$800(CameraActivity cameraActivity) {
        return cameraActivity.canFinishByScreenOff();
    }

    static /* synthetic */ void access$900(CameraActivity cameraActivity) {
        cameraActivity.allowFinishByScreenOff();
    }

    private static void logPerformance(String str) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [CameraActivity] [" + Thread.currentThread().getName() + " : " + str + "]");
    }

    private static boolean getFuture(Future<?> future) {
        if (future == null) {
            return true;
        }
        try {
            future.get(3000L, TimeUnit.MILLISECONDS);
            return true;
        } catch (InterruptedException e) {
            CamLog.e("Failed to get Future.", e);
            return false;
        } catch (CancellationException e2) {
            CamLog.e("Failed to get Future.", e2);
            return false;
        } catch (ExecutionException e3) {
            CamLog.e("Failed to get Future.", e3);
            return false;
        } catch (TimeoutException e4) {
            CamLog.e("Failed to get Future.", e4);
            return false;
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.TerminateListener
    public void terminateApplication() {
        finish();
    }

    public CameraDeviceHandler$CameraSessionId prepareCameraDeviceHandler(FastCapture fastCapture, CapturingMode capturingMode, UserSettings userSettings) {
        if (CamLog.VERBOSE) {
            String[] strArr = new String[1];
            StringBuilder sb = new StringBuilder();
            sb.append("prepareCameraDeviceHandler() launch:");
            sb.append(fastCapture == null ? "null" : fastCapture.name());
            sb.append(" capturing-mode:");
            sb.append(capturingMode.name());
            strArr[0] = sb.toString();
            CamLog.d(strArr);
        }
        if (this.mIsNeedToCloseBypassCameraBecauseModeChanged) {
            this.mIsNeedToCloseBypassCameraBecauseModeChanged = false;
            getCameraDevice().closeCamera();
        }
        if (!getCameraDevice().prepareCamera(fastCapture, capturingMode, userSettings)) {
            return null;
        }
        userSettings.applyCapturingMode();
        return getCameraDevice().openCamera(fastCapture, capturingMode, userSettings);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        if (CamLog.DEBUG) {
            CamLog.d("onCreate() : E");
        }
        PerfLog.ACTIVITY_ON_CREATE.begin();
        boolean z = !PlatformCapability.awaitPrepare(2000L, TimeUnit.MILLISECONDS);
        if (!PlatformCapability.isPrepared() || PlatformCapability.hasDeviceError()) {
            if (CamLog.DEBUG) {
                CamLog.d("PlatformCapability is not prepared yet");
            }
            if (!PermissionsUtil.arePermissionsGranted(this, this.REQUESTED_PERMISSIONS)) {
                super.onCreate(bundle);
                createLaunchCondition();
                return;
            }
            if (!z) {
                if (CamLog.DEBUG) {
                    CamLog.d("Retry preparing PlatformCapability");
                }
                PlatformCapability.prepareAsync(new CameraActivity$6(this));
                PlatformCapability.awaitPrepare(2000L, TimeUnit.MILLISECONDS);
            }
            if (!PlatformCapability.isPrepared()) {
                PlatformCapability.setDeviceError(true);
                AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this);
                alertDialog$Builder.setTitle(2131689770).setMessage(2131689773).setCancelable(false).setPositiveButton(2131689975, (DialogInterface$OnClickListener) null).setOnDismissListener(new CameraActivity$7(this));
                AlertDialog alertDialogCreate = alertDialog$Builder.create();
                alertDialogCreate.getWindow().addFlags(128);
                alertDialogCreate.show();
                super.onCreate(bundle);
                return;
            }
        }
        if (CamLog.VERBOSE) {
            logLifeCycleIn("CameraActivity", CameraActivity$LifeCycleIds.ON_CREATE);
        }
        LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE);
        LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE);
        LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE);
        LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE);
        if (getIntent().getAction() == null) {
            getIntent().setAction("android.intent.action.MAIN");
        }
        getWindow().requestFeature(12);
        this.mStorage = ((CameraApplication) getApplication()).getStorage();
        this.mStoredSettings = SettingsFactory.create(getApplicationContext(), this.mStorage);
        this.mBackgroundWorker = ThreadUtil.buildExecutor("AsyncAct", 10);
        createLaunchCondition();
        this.mLaunchCondition.setup(getIntent(), this.mStoredSettings.getLastSettings().getCapturingMode(), this instanceof InternalCameraActivity);
        notifyActivityState("activity-resumed");
        LaunchCondition$LaunchTrigger launchTrigger = getLaunchCondition().getLaunchTrigger();
        if (launchTrigger == LaunchCondition$LaunchTrigger.LIFT_TRIGGER) {
            LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE);
        }
        if (!isLaunchedFromLocked(getIntent()) && launchTrigger != LaunchCondition$LaunchTrigger.LIFT_TRIGGER) {
            LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE);
        }
        UserSettings userSettings = this.mStoredSettings.getUserSettings();
        userSettings.prepare(getApplicationContext(), this.mLaunchCondition.getOneShotMode(), this.mLaunchCondition.getExtraOutput(), this.mLaunchCondition.getVideoQualityConfigurations(), this.mLaunchCondition.getExtraSettings());
        userSettings.changeCapturingMode(this.mLaunchCondition.getCapturingMode());
        this.mCurrentCameraSessionId = getCameraDevice().preloadCamera(this, userSettings, this.mLaunchCondition.getCapturingMode(), this.mLaunchCondition.getExtraOperation() == LaunchCondition$ExtraOperation.LAUNCH_AND_CAPTURE && !isInLockTaskMode());
        this.mAutoPowerOffTimer = new AutoPowerOffTimer(this, new CameraActivity$AutoPowerOffListenerImpl(this, null));
        setupCoreInstance();
        super.onCreate(null);
        this.mLocationSettingsReader = new LocationSettingsReader();
        ResearchUtil.getInstance().onCreate(this);
        this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_INITIALIZE, new Object[0]);
        if (this.mStorage.isStorageReadable()) {
            if (CamLog.VERBOSE) {
                CamLog.d("StorageActivated was already finished.");
            }
            this.mSetupAllTaskFuture = this.mBackgroundWorker.submit(new CameraActivity$SetupAllTask(this, null));
        } else {
            if (CamLog.VERBOSE) {
                CamLog.d("StorageActivated was not finished yet.");
            }
            this.mStorage.addStorageReadyStateListener(new CameraActivity$8(this));
        }
        createBatteryChangedReceiver();
        LocalResearchUtil.getInstance().setBatteryChangedReceiver(this.mBatteryChangedReceiver);
        this.mBackgroundWorker.execute(new CameraActivity$ThermalAlertReceiverCreateTask(this, null));
        this.mBackgroundWorker.execute(new CameraActivity$ThermalAlertReceiverOnCreateTask(this, null));
        registerForceExitRequestReceiver();
        if (PlatformCapability.isWearableSupported()) {
            setupWearableFramework();
        }
        setupScreenOffReceiver();
        this.mIsColdBoot = true;
        if (CamLog.VERBOSE) {
            logLifeCycleOut("CameraActivity", CameraActivity$LifeCycleIds.ON_CREATE);
        }
        if (CamLog.DEBUG) {
            CamLog.d("onCreate() : X");
        }
        PerfLog.ACTIVITY_ON_CREATE.end();
    }

    public void setupAutoPowerOffTimeOutDuration(boolean z) {
        CameraActivity$AutoPowerOffType cameraActivity$AutoPowerOffType;
        if (z) {
            if (!this.mStoredSettings.getMessageSettings().isNeverShow(MessageType.PREDICTIVE_LAUNCH_DESCRIPTION)) {
                cameraActivity$AutoPowerOffType = CameraActivity$AutoPowerOffType.LIFT_TRIGGER_DIALOG;
            } else {
                cameraActivity$AutoPowerOffType = CameraActivity$AutoPowerOffType.LIFT_TRIGGER;
            }
        } else if (shouldShowWhenLocked()) {
            cameraActivity$AutoPowerOffType = CameraActivity$AutoPowerOffType.ON_LOCKSCREEN;
        } else {
            cameraActivity$AutoPowerOffType = CameraActivity$AutoPowerOffType.DEFAULT;
        }
        this.mAutoPowerOffTimer.setTimeOutDuration(cameraActivity$AutoPowerOffType.getDuration(), this.mViewFinder.getAutoPowerOffHintTextTimeOutDuration(), cameraActivity$AutoPowerOffType.getReason());
    }

    private void setupScreenOffReceiver() {
        this.mScreenOffReceiver = new CameraActivity$ScreenOffReceiver(this, null);
        IntentFilter intentFilter = new IntentFilter();
        if (shouldShowWhenLocked()) {
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
        }
        registerReceiver(this.mScreenOffReceiver, intentFilter);
    }

    private void registerShutDownReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
        registerReceiver(this.mShutDownReceiver, intentFilter);
    }

    private void unRegisterShutDownReceiver() {
        CameraActivity$ShutDownReceiver cameraActivity$ShutDownReceiver = this.mShutDownReceiver;
        if (cameraActivity$ShutDownReceiver != null) {
            try {
                unregisterReceiver(cameraActivity$ShutDownReceiver);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    public boolean awaitSetupAllReady() {
        return getFuture(this.mSetupAllTaskFuture);
    }

    private void setupWearableFramework() {
        this.mWearableBridgeLifeCycleObserver = new CameraActivity$WearableBridgeLifeCycleObserver(this, null);
        this.mWearableBridgePhotoEventObserver = new CameraActivity$WearableBridgePhotoEventObserver(this, null);
        this.mWearableBridgeVideoEventObserver = new CameraActivity$WearableBridgeVideoEventObserver(null);
        this.mWearableBridgeClient = new WearableBridgeClient(this, new Handler(), this.mWearableBridgeLifeCycleObserver, this.mWearableBridgePhotoEventObserver, this.mWearableBridgeVideoEventObserver);
    }

    public void reportFullyDrawnOnce() {
        if (sIsReportFullyDrawnAlreadyReported) {
            return;
        }
        sIsReportFullyDrawnAlreadyReported = true;
        CamLog.d("Report fully drawn");
        reportFullyDrawn();
    }

    public void finishOneShot(StateMachine$OneShotResult stateMachine$OneShotResult) {
        if (CamLog.VERBOSE) {
            CamLog.d("finishOneShot: result: " + stateMachine$OneShotResult.uri);
        }
        this.mDisableMultiWindow = true;
        if (isOneShotVideo()) {
            Intent intent = new Intent();
            intent.setData(stateMachine$OneShotResult.uri);
            intent.addFlags(1);
            setResult(stateMachine$OneShotResult.code, intent);
            terminateApplication();
            return;
        }
        if (isOneShotPhoto()) {
            if (stateMachine$OneShotResult.savingRequest.getExtraOutput() == null) {
                if (stateMachine$OneShotResult.isSuccess) {
                    setResult(stateMachine$OneShotResult.code, OneShotUtility.createResultIntent(this, stateMachine$OneShotResult.uri, stateMachine$OneShotResult.savingRequest.common.mimeType, stateMachine$OneShotResult.savingRequest.common.orientation, stateMachine$OneShotResult.bitmap));
                } else {
                    setResult(0);
                }
            } else {
                setResult(stateMachine$OneShotResult.code);
            }
            finish();
        }
    }

    private void setupAll() {
        this.mGeotagManager = new GeotagManager(this);
        this.mSoundPlayer = new SoundPlayer(getApplicationContext());
    }

    private ViewFinderImpl createViewFinder() {
        ViewFinderImpl viewFinderImpl = new ViewFinderImpl(this, shouldShowWhenLocked(), getScreenAspect(), getStoredSettings().getUiControlSettings());
        viewFinderImpl.setStateMachine(this.mStateMachine);
        viewFinderImpl.setCameraDevice(getCameraDevice());
        viewFinderImpl.prepareSelfTimerAndTouchCapture();
        this.mViewFinderInitializationTaskFuture = this.mBackgroundWorker.submit(new CameraActivity$ViewFinderInitializationTask(viewFinderImpl, null));
        return viewFinderImpl;
    }

    private void setupCoreInstance() {
        if (CamLog.VERBOSE) {
            CamLog.d("invoked setupCoreInstance()");
        }
        this.mStateMachine = new StateMachine(this, this.mStorage);
        ViewFinderImpl viewFinderImplCreateViewFinder = createViewFinder();
        this.mViewFinder = viewFinderImplCreateViewFinder;
        this.mUserEventHandler = new UserEventHandler(this, viewFinderImplCreateViewFinder, this.mStateMachine, this.mStorage, this.mStoredSettings.getUserSettings(), this.mStoredSettings.getMessageSettings(), !getLaunchCondition().getOneShotMode().isEnabled());
        this.mKeyEventDispatcher.attach(this.mUserEventHandler);
        this.mKeyEventDispatcher.start();
        this.mSideTouchEventDispatcher.attach(this.mUserEventHandler);
        viewFinderImplCreateViewFinder.getTouchEventDispatcher().attach(this.mUserEventHandler);
        viewFinderImplCreateViewFinder.getTouchEventDispatcher().start();
        this.mStateMachine.getVirtualKeyEventDispatcher().attach(this.mUserEventHandler);
        this.mStateMachine.getVirtualKeyEventDispatcher().start();
        this.mStateMachine.setDependencies(this.mViewFinder, getCameraDevice());
    }

    public LayoutDependencyResolver$ScreenAspect getScreenAspect() {
        if (this.mScreenAspect == null) {
            ((WindowManager) getSystemService("window")).getDefaultDisplay().getRealSize(new Point());
            float fMax = (Math.max(r1.y, r1.x) * 1.0f) / Math.min(r1.y, r1.x);
            if (Math.abs(fMax - 2.0f) < 0.01f) {
                this.mScreenAspect = LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE;
            } else if (Math.abs(fMax - 1.7777778f) < 0.01f) {
                this.mScreenAspect = LayoutDependencyResolver$ScreenAspect.SIXTEEN_NINE;
            } else {
                this.mScreenAspect = LayoutDependencyResolver$ScreenAspect.NOT_DEFINED;
            }
        }
        return this.mScreenAspect;
    }

    @Override // android.app.Activity
    public void onStart() {
        if (CamLog.VERBOSE) {
            logLifeCycleIn("CameraActivity", CameraActivity$LifeCycleIds.ON_START);
        }
        super.onStart();
        if (PlatformCapability.isPrepared() && CamLog.VERBOSE) {
            logLifeCycleOut("CameraActivity", CameraActivity$LifeCycleIds.ON_START);
        }
    }

    private boolean canFinishByScreenOff() {
        return this.mCanFinishByScreenOff;
    }

    private void allowFinishByScreenOff() {
        this.mCanFinishByScreenOff = true;
    }

    @Override // android.app.Activity
    public void onRestart() {
        if (CamLog.VERBOSE) {
            logLifeCycleIn("CameraActivity", CameraActivity$LifeCycleIds.ON_RESTART);
        }
        super.onRestart();
        if (PlatformCapability.isPrepared()) {
            this.mLaunchCondition.onRestart(isKeyguardLocked(), shouldShowWhenLocked());
            if (CamLog.VERBOSE) {
                logLifeCycleOut("CameraActivity", CameraActivity$LifeCycleIds.ON_RESTART);
            }
        }
    }

    private void onResumeTasks() {
        PerfLog.ACTIVITY_ON_RESUME.begin();
        if (CamLog.DEBUG) {
            CamLog.d("onResume() : E");
        }
        if (CamLog.VERBOSE) {
            logLifeCycleIn("CameraActivity", CameraActivity$LifeCycleIds.ON_RESUME);
        }
        getCameraDevice().setActivityForeground(true);
        getLaunchCondition().onResume();
        if (!checkAndRequestSelfPermissions(12, this.REQUESTED_PERMISSIONS)) {
            doResume();
        } else if (this.mLaunchCondition.getExtraOperation() == LaunchCondition$ExtraOperation.LAUNCH_AND_CAPTURE) {
            if (CamLog.VERBOSE) {
                CamLog.d("start clearExtraOperation");
            }
            this.mLaunchCondition.clearExtraOperation();
        }
        sendBroadcast(new Intent("com.sonyericsson.android.camera.intent.action.LAUNCH"));
        CameraButtonIntentReceiver.releaseCameraDeviceReleaseTimer();
        notifyActivityState("activity-resumed");
        this.mKeyEventDispatcher.start();
        if (CamLog.VERBOSE) {
            logLifeCycleOut("CameraActivity", CameraActivity$LifeCycleIds.ON_RESUME);
        }
        if (CamLog.DEBUG) {
            CamLog.d("onResume() : X");
        }
        PerfLog.ACTIVITY_ON_RESUME.end();
    }

    private void doResume() {
        FastCapture fastCapture;
        if (!this.mLaunchCondition.isCorrectExtraOutputPath()) {
            AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this);
            alertDialog$Builder.setTitle(2131689789).setMessage(2131689788).setCancelable(false).setPositiveButton(2131689975, (DialogInterface$OnClickListener) null).setOnDismissListener(new CameraActivity$9(this));
            AlertDialog alertDialogCreate = alertDialog$Builder.create();
            alertDialogCreate.getWindow().addFlags(128);
            alertDialogCreate.show();
            return;
        }
        if (!isKeyguardLocked() && this.mLaunchCondition.isLaunchInternalMode()) {
            ModeSelectorInternalMode modeSelectorInternalMode = ModeSelectorInternalMode.values()[this.mLaunchCondition.getLaunchInternalMode()];
            this.mLaunchCondition.clearLaunchInternalMode();
            CapturingMode capturingMode = CapturingMode.values()[this.mLaunchCondition.getLaunchInternalCallingCapturingMode()];
            this.mLaunchCondition.clearLaunchInternalCallingCapturingMode();
            boolean zContains = CapturingModeUtil.MODE_WHITE_LIST.contains(modeSelectorInternalMode.name());
            switch (CameraActivity$12.$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode[modeSelectorInternalMode.ordinal()]) {
                case 1:
                    ApplicationLauncher.launchExternalCamera(this, 18, this.mStateMachine.getUserSetting(), capturingMode, zContains);
                    return;
                case 2:
                    ApplicationLauncher.launchExternalCamera(this, 17, this.mStateMachine.getUserSetting(), capturingMode, zContains);
                    return;
                case 3:
                    ApplicationLauncher.launchExternalCamera(this, 16, this.mStateMachine.getUserSetting(), CapturingMode.SCENE_RECOGNITION, zContains);
                    return;
                default:
                    if (CamLog.VERBOSE) {
                        CamLog.e("Bad launch internalMode :" + modeSelectorInternalMode);
                    }
                    break;
            }
        }
        enableOrientation();
        if (getLaunchCondition().getLaunchTrigger() != LaunchCondition$LaunchTrigger.VIEWER) {
            this.mStoredSettings.getUserSettings().clearCachedUserSetting();
        }
        this.mStoredSettings.getUserSettings().changeCapturingMode(this.mLaunchCondition.getCapturingMode());
        if (this.mLaunchCondition.getLaunchCameraMode().isLaunchedByGoogleAssistant()) {
            changeParametersForGoogleAssistant();
        }
        this.mCameraDeviceHandler = getCameraDevice();
        this.mCameraDeviceHandler.setStateMachine(this.mStateMachine);
        if (this.mLaunchCondition.getExtraOperation() == LaunchCondition$ExtraOperation.LAUNCH_AND_CAPTURE) {
            fastCapture = FastCapture.LAUNCH_AND_CAPTURE;
        } else {
            fastCapture = FastCapture.LAUNCH_ONLY;
        }
        this.mCurrentCameraSessionId = prepareCameraDeviceHandler(fastCapture, this.mLaunchCondition.getCapturingMode(), this.mStoredSettings.getUserSettings());
        this.mCameraDeviceHandler.setOnPreviewStartedListener(new CameraActivity$OnPreviewStartedListenerImpl(this, this.mCurrentCameraSessionId));
        getWindow().clearFlags(2048);
        getWindow().addFlags(1024);
        getWindow().addFlags(256);
        getWindow().addFlags(512);
        getWindow().addFlags(128);
        getCameraDevice().awaitLoadSettingsThread();
        this.mLocationSettingsReader.readLocationSettings(this);
        setupAutoPowerOffTimeOutDuration(getLaunchCondition().getLaunchTrigger() == LaunchCondition$LaunchTrigger.LIFT_TRIGGER);
        enableAutoPowerOffTimer();
        ResearchUtil.getInstance().onResume(false);
        if (getWearableBridge() != null) {
            getWearableBridge().joinInitializeTask();
            getWearableBridge().getLifeCycleNotifier().onResume();
        }
        getCameraDevice().disableFpsLimitation();
        ((ViewFinderImpl) this.mViewFinder).updatePreviewLayoutParams();
        if (isDeviceInSecurityLock() && (getLaunchCondition().getLaunchTrigger() == LaunchCondition$LaunchTrigger.DUAL_CAMERA_EFFECT || getLaunchCondition().getLaunchTrigger() == LaunchCondition$LaunchTrigger.PORTRAIT_SELFIE)) {
            awaitCreateContentInfoReady();
        }
        if (LocalResearchUtil.getInstance().isMeasurementValid(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE) && LocalResearchUtil.getInstance().isMeasurementValid(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE)) {
            LocalResearchUtil.getInstance().setMeasurementInvalid(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE);
        }
        LocalResearchUtil.getInstance().setLaunchBy(this.mLaunchCondition.getLaunchTrigger());
        LocalResearchUtil.getInstance().setView(this.mLaunchCondition.getCapturingMode());
        StateMachine$StartupAction stateMachine$StartupAction = StateMachine$StartupAction.NONE;
        if (this.mLaunchCondition.getGoogleAssistantSelfTimer() > 0) {
            stateMachine$StartupAction = StateMachine$StartupAction.CAPTURE;
        } else if (!this.mLaunchCondition.isGoogleAssistantLaunchOnly() && this.mLaunchCondition.getCapturingMode().isVideo()) {
            stateMachine$StartupAction = StateMachine$StartupAction.RECORD;
        }
        this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_RESUME, fastCapture, this.mCurrentCameraSessionId, stateMachine$StartupAction);
        if (this.mLastDetectedOrientation == CameraActivity$LayoutOrientation.Unknown) {
            if (LayoutOrientationResolver.getInstance().getConfigurationOrientation() == 2) {
                setLayoutOrientation(CameraActivity$LayoutOrientation.Landscape);
                this.mLastDetectedOrientation = CameraActivity$LayoutOrientation.Landscape;
            } else {
                setLayoutOrientation(CameraActivity$LayoutOrientation.Portrait);
                this.mLastDetectedOrientation = CameraActivity$LayoutOrientation.Portrait;
            }
        }
        if (isInMultiWindowMode() && !this.mDisableMultiWindow) {
            launchMultiWindow();
        }
        this.mBatteryChangedReceiver.checkStartupStatus();
        boolean z = !getStoredSettings().getMessageSettings().isNeverShow(MessageType.SETUP_WIZARD);
        if (PlatformCapability.isLiftTriggerSupported() && this.mStoredSettings.getUserSettings().get(UserSettingKey.PREDICTIVE_LAUNCH) == PredictiveLaunch.OFF && getLaunchCondition().getLaunchTrigger() == LaunchCondition$LaunchTrigger.LIFT_TRIGGER) {
            this.mBackgroundWorker.execute(new CameraActivity$ScreenOffTask(this, null));
            terminateApplication();
            return;
        }
        if (z && !this.mBatteryChangedReceiver.isAlreadyBcl() && !isOneShot() && getLaunchCondition().getLaunchTrigger() != LaunchCondition$LaunchTrigger.GOOGLE_ASSISTANT) {
            startActivityForResult(new Intent(this, (Class<?>) SetupWizardActivity.class), 15, this.mSetupWizardResultListener);
        } else {
            this.mThermalAlertReceiverReadyTaskFuture = this.mBackgroundWorker.submit(new CameraActivity$ThermalAlertReceiverOnResumeTask(this, null));
        }
        requestInflateUiComponents();
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        if (PlatformCapability.isPrepared()) {
            if (CamLog.VERBOSE) {
                CamLog.d("onMultiWindowModeChanged() : " + z);
            }
            if (z && PermissionsUtil.arePermissionsGranted(this, this.REQUESTED_PERMISSIONS) && !this.mDisableMultiWindow) {
                launchMultiWindow();
            }
        }
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        super.onUserInteraction();
        if (this.mAutoPowerOffTimer == null || CameraActivity$AutoPowerOffType.LIFT_TRIGGER.getReason().equals(this.mAutoPowerOffTimer.getUserdata())) {
            return;
        }
        restartAutoPowerOffTimer();
    }

    private void launchMultiWindow() {
        if (CamLog.VERBOSE) {
            CamLog.d("Launch multi window mode activity ");
        }
        this.mDisableMultiWindow = true;
        this.mReturnOneShotResult = false;
        Intent intent = new Intent(getIntent());
        intent.setClass(getApplicationContext(), MultiWindowActivity.class);
        if (intent.getAction() == null) {
            if (isOneShotPhoto()) {
                intent.setAction("android.media.action.IMAGE_CAPTURE");
            } else if (isOneShotVideo()) {
                intent.setAction("android.media.action.VIDEO_CAPTURE");
            } else {
                if (CamLog.VERBOSE) {
                    CamLog.e("SomcCamera not support multi window mode, intent :[" + intent + "]");
                }
                terminateApplication();
                return;
            }
        } else if (!isOneShotVideo() && !isOneShotPhoto()) {
            if (CamLog.VERBOSE) {
                CamLog.e("SomcCamera not support multi window mode, intent :[" + intent + "]");
            }
            terminateApplication();
            return;
        }
        intent.addFlags(33554432);
        if (CamLog.VERBOSE) {
            CamLog.d("Start multi window activity, intent : " + intent);
        }
        startActivity(intent);
        terminateApplication();
    }

    private void requestInflateUiComponents() {
        this.mViewFinder.requestInflate(getLayoutInflater());
    }

    public boolean awaitViewFinderReady() {
        if (this.mViewFinderInitializationTaskFuture == null) {
            return true;
        }
        boolean future = getFuture(this.mViewFinderInitializationTaskFuture);
        this.mViewFinderInitializationTaskFuture = null;
        if (!future) {
            return future;
        }
        this.mViewFinder.attachToWindow();
        return future;
    }

    private boolean awaitThermalAlertReceiverReady() {
        return getFuture(this.mThermalAlertReceiverReadyTaskFuture);
    }

    public boolean isAlreadyHighTemperature() {
        if (awaitThermalAlertReceiverReady()) {
            return this.mThermalAlertReceiver.isAlreadyHighTemperature();
        }
        return false;
    }

    public boolean isThermalWarningState() {
        if (awaitThermalAlertReceiverReady()) {
            return this.mThermalAlertReceiver.isWarningState();
        }
        return false;
    }

    public boolean isThermalWarningExtraState() {
        if (awaitThermalAlertReceiverReady()) {
            return this.mThermalAlertReceiver.isWarningExtraState();
        }
        return false;
    }

    public boolean isThermalWarningReceived() {
        if (awaitThermalAlertReceiverReady()) {
            return this.mThermalAlertReceiver.isThermalWarningReceived();
        }
        return false;
    }

    public void requestPostLazyInitializationTaskExecute() {
        this.mPostDeviceInitializationTask = new CameraActivity$PostDeviceInitializationTask(this, this);
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY, false);
        if (this.mLaunchCondition.getExtraOperation() == LaunchCondition$ExtraOperation.LAUNCH_AND_CAPTURE) {
            postDelayedEvent(this.mPostDeviceInitializationTask, 100L);
        } else {
            postEvent(this.mPostDeviceInitializationTask);
        }
    }

    private void postEvent(Runnable runnable) {
        CameraApplication.getUiThreadHandler().post(runnable);
    }

    public void postDelayedEvent(Runnable runnable, long j) {
        CameraApplication.getUiThreadHandler().postDelayed(runnable, j);
    }

    private void cancelDelayedEvent(Runnable runnable) {
        CameraApplication.getUiThreadHandler().removeCallbacks(runnable);
    }

    private void requestFinishCameraActivity() {
        if (CamLog.VERBOSE) {
            CamLog.d("requestFinishCameraActivity()");
        }
        if (shouldShowWhenLocked()) {
            sendBroadcast(new Intent("com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"));
        }
    }

    public void requestSuspend() {
        if (CamLog.VERBOSE) {
            CamLog.d("requestSuspend():[IN]");
        }
        if (moveTaskToBack(true)) {
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("requestSuspend():[FAILED]");
        }
        finish();
    }

    public void requestRestartCameraActivityAfterResetSettings() {
        this.mResetSettingsRequested = true;
        finish();
    }

    public void onPauseTasks() {
        PerfLog.ACTIVITY_ON_PAUSE.begin();
        if (CamLog.DEBUG) {
            CamLog.d("onPause() : E");
        }
        if (CamLog.VERBOSE) {
            logLifeCycleIn("CameraActivity", CameraActivity$LifeCycleIds.ON_PAUSE);
        }
        notifyActivityState("activity-paused");
        LaunchCondition$LaunchTrigger launchTrigger = getLaunchCondition().getLaunchTrigger();
        if (launchTrigger != LaunchCondition$LaunchTrigger.POWER_KEY_DOUBLE_TAP && launchTrigger != LaunchCondition$LaunchTrigger.LIFT_TRIGGER) {
            LocalResearchUtil.getInstance().setMeasurementInvalid(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE);
            LocalResearchUtil.getInstance().setMeasurementInvalid(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE);
        }
        if (launchTrigger != LaunchCondition$LaunchTrigger.LIFT_TRIGGER) {
            LocalResearchUtil.getInstance().setMeasurementInvalid(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE);
            LocalResearchUtil.getInstance().setMeasurementInvalid(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE);
        }
        LocalResearchUtil.getInstance().setMeasurementInvalid(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE);
        LocalResearchUtil.getInstance().setMeasurementInvalid(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE);
        LocalResearchUtil.getInstance().setMeasurementInvalid(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE);
        LocalResearchUtil.getInstance().setMeasurementInvalid(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE);
        getCameraDevice().setActivityForeground(false);
        awaitSetupAllReady();
        sendBroadcast(new Intent("com.sonyericsson.android.camera.intent.action.FINISH"));
        if (PermissionsUtil.arePermissionsGranted(getApplicationContext(), this.REQUESTED_PERMISSIONS)) {
            doPause();
        } else {
            releaseCamera();
            this.mCurrentCameraSessionId = null;
            this.mViewFinder.clearMessageDialog();
        }
        if (this.mUserEventHandler != null) {
            this.mKeyEventDispatcher.stop();
            this.mSideTouchEventDispatcher.stop();
        }
        if (CamLog.VERBOSE) {
            logLifeCycleOut("CameraActivity", CameraActivity$LifeCycleIds.ON_PAUSE);
        }
        if (CamLog.DEBUG) {
            CamLog.d("onPause() : X");
        }
        PerfLog.ACTIVITY_ON_PAUSE.end();
    }

    private void doPause() {
        CapturingMode capturingMode;
        getCameraDevice().removeOnPreviewStartedListener();
        if (this.mStateMachine == null) {
            return;
        }
        this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_PAUSE, true);
        if (this.mCameraDeviceHandler != null && (capturingMode = (CapturingMode) this.mStoredSettings.getUserSettings().get(UserSettingKey.CAPTURING_MODE)) != null) {
            this.mCameraDeviceHandler.savePreloadSettings(capturingMode, this.mStoredSettings.getUserSettings(), this.mStoredSettings.getLastSettings(), isOneShot());
        }
        if (this.mResetSettingsRequested) {
            this.mStoredSettings.clearAllSettings(getStorage());
        }
        releaseCamera();
        this.mCurrentCameraSessionId = null;
        this.mBackgroundWorker.execute(new CameraActivity$ThermalAlertReceiverOnPauseTask(this, null));
        if (this.mGeotagManager != null) {
            this.mGeotagManager.releaseResource();
        }
        if (this.mPostDeviceInitializationTask != null) {
            cancelDelayedEvent(this.mPostDeviceInitializationTask);
        }
        if (this.mLazyInitializationiTask != null) {
            cancelDelayedEvent(this.mLazyInitializationiTask);
        }
        this.mStateMachine.releaseContentsViewController();
        if (getWearableBridge() != null) {
            getWearableBridge().getLifeCycleNotifier().onPause();
        }
        if (this.mIsReceiverResistered) {
            this.mIsReceiverResistered = false;
        }
        disableAutoPowerOffTimer();
        getWindow().clearFlags(128);
        unmuteSound();
        this.mViewFinder.clearMessageDialog();
        disableOrientation();
        ResearchUtil.getInstance().onPause(false);
        if (this.mStoredSettings.getUserSettings().get(UserSettingKey.CAPTURING_MODE) != null) {
            this.mLaunchCondition.setCapturingMode((CapturingMode) this.mStoredSettings.getUserSettings().get(UserSettingKey.CAPTURING_MODE));
        }
        this.mLaunchCondition.onPause();
        this.mBackgroundWorker.execute(new CameraActivity$StartGyroCalibrationOnPauseTask(this, null));
    }

    private void releaseCamera() {
        if (this.mCameraDeviceHandler != null) {
            this.mCameraDeviceHandler.disableFpsLimitation();
            this.mCameraDeviceHandler.closeCamera();
            this.mCameraDeviceHandler.setStateMachine(null);
            this.mCameraDeviceHandler = null;
            return;
        }
        getCameraDevice().closeCamera();
    }

    @Override // android.app.Activity
    public void onStop() {
        if (CamLog.VERBOSE) {
            logLifeCycleIn("CameraActivity", CameraActivity$LifeCycleIds.ON_STOP);
        }
        PerfLog.ACTIVITY_ON_STOP.begin();
        super.onStop();
        if (PlatformCapability.hasDeviceError()) {
            finishAndRemoveTask();
            Process.killProcess(Process.myPid());
            return;
        }
        if (PlatformCapability.isPrepared()) {
            if (this.mResetSettingsRequested) {
                Intent launchIntentForPackage = getBaseContext().getPackageManager().getLaunchIntentForPackage(getBaseContext().getPackageName());
                launchIntentForPackage.addFlags(268468224);
                startActivity(launchIntentForPackage, null);
                this.mResetSettingsRequested = false;
            }
            PerfLog.ACTIVITY_ON_STOP.end();
            if (CamLog.VERBOSE) {
                logLifeCycleOut("CameraActivity", CameraActivity$LifeCycleIds.ON_STOP);
            }
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        PerfLog.ACTIVITY_ON_DESTROY.begin();
        if (CamLog.DEBUG) {
            CamLog.d("onDestroy() : E");
        }
        if (CamLog.VERBOSE) {
            logLifeCycleIn("CameraActivity", CameraActivity$LifeCycleIds.ON_DESTROY);
        }
        super.onDestroy();
        if (PlatformCapability.isPrepared()) {
            this.mLayoutOrientationChangedListenerSet.clear();
            ResearchUtil.getInstance().onDestroy();
            if (CamLog.VERBOSE) {
                CamLog.d("onDestroy():[IN]");
            }
            unregisterForceExitRequestReceiver();
            getDownAll();
            this.mIsCalledOnDestroy = false;
            ExecutorService executorService = this.mBackgroundWorker;
            if (executorService != null) {
                executorService.execute(new CameraActivity$ThermalAlertReceiverOnDestroyTask(this, null));
                this.mBackgroundWorker.shutdown();
                try {
                    if (!this.mBackgroundWorker.awaitTermination(1000L, TimeUnit.MILLISECONDS)) {
                        synchronized (this.mThermalAlertReceiver) {
                            if (!this.mIsCalledOnDestroy) {
                                this.mIsCalledOnDestroy = true;
                                this.mThermalAlertReceiver.onDestroy();
                                this.mBatteryChangedReceiver.onDestroy();
                            }
                        }
                    }
                } catch (InterruptedException unused) {
                    CamLog.e("mBackgroundWorker.shutdown is Timeout.");
                    synchronized (this.mThermalAlertReceiver) {
                        if (!this.mIsCalledOnDestroy) {
                            this.mIsCalledOnDestroy = true;
                            this.mThermalAlertReceiver.onDestroy();
                            this.mBatteryChangedReceiver.onDestroy();
                        }
                    }
                }
            }
            if (PlatformCapability.isWearableSupported()) {
                releaseWearableFramework();
            }
            if (CamLog.VERBOSE) {
                logLifeCycleOut("CameraActivity", CameraActivity$LifeCycleIds.ON_DESTROY);
            }
            if (CamLog.DEBUG) {
                CamLog.d("onDestroy() : X");
            }
            PerfLog.ACTIVITY_ON_DESTROY.end();
        }
    }

    private void getDownAll() {
        StateMachine stateMachine = this.mStateMachine;
        if (stateMachine == null) {
            return;
        }
        stateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_FINALIZE, new Object[0]);
        this.mStoredSettings.getUserSettings().release();
        this.mStateMachine = null;
        this.mViewFinder = null;
        this.mAutoPowerOffTimer = null;
        this.mUserEventHandler.release();
        this.mUserEventHandler = null;
        releaseSoundPlayer();
        if (this.mGeotagManager != null) {
            this.mGeotagManager.release();
        }
        unregisterReceiver(this.mScreenOffReceiver);
        this.mScreenOffReceiver = null;
        this.mThermalAlertReceiverReadyTaskFuture = null;
        this.mViewFinderInitializationTaskFuture = null;
        this.mSetupAllTaskFuture = null;
        this.mShutDownReceiver = null;
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        if (this.mKeyEventDispatcher.sendKeyLongPress(keyEvent)) {
            return true;
        }
        return super.onKeyLongPress(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (CamLog.DEBUG) {
            CamLog.d("KeyEvent.getEventTime() = " + keyEvent.getEventTime());
        }
        if (CamLog.DEBUG) {
            CamLog.d("CameraActivity.onKeyDown() : KEYCODE=" + i);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("onKeyDown():[IN]");
        }
        if (isFinishing() || this.mKeyEventDispatcher.sendKeyDown(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (CamLog.DEBUG) {
            CamLog.d("KeyEvent.getEventTime() = " + keyEvent.getEventTime());
        }
        if (CamLog.DEBUG) {
            CamLog.d("CameraActivity.onKeyUp() : KEYCODE=" + i);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("onKeyUp():[IN]");
        }
        if (isFinishing() || this.mKeyEventDispatcher.sendKeyUp(keyEvent)) {
            return true;
        }
        if (i == 4) {
            abort();
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public void playSound(@NonNull SoundPlayer$Type soundPlayer$Type) {
        if (this.mSoundPlayer == null) {
            return;
        }
        this.mSoundPlayer.play(soundPlayer$Type);
    }

    public void stopPlayingSound() {
        if (this.mSoundPlayer != null) {
            this.mSoundPlayer.stop();
        }
    }

    private void releaseSoundPlayer() {
        if (this.mSoundPlayer != null) {
            this.mSoundPlayer.release();
            this.mSoundPlayer = null;
        }
    }

    public void abort() {
        if (CamLog.VERBOSE) {
            CamLog.d("call abort()");
        }
        abort(true);
    }

    private void abort(boolean z) {
        if (this.mStateMachine != null) {
            if (z) {
                if (isDeviceInSecurityLock() || isInLockTaskMode()) {
                    finish();
                    return;
                } else {
                    if (isOneShot()) {
                        if (this.mReturnOneShotResult) {
                            setResult(0);
                        }
                        finishUrgently();
                        return;
                    }
                    requestSuspend();
                    return;
                }
            }
            this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_PAUSE, false);
        }
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (CamLog.VERBOSE) {
            CamLog.d("onCancel finish()");
        }
        finish();
    }

    public void requestLaunchAdvancedCamera(LaunchCondition$ExtraOperation launchCondition$ExtraOperation, String str) {
        CameraApplication.getUiThreadHandler().post(new CameraActivity$RequestLaunchAdvancedCameraTask(this, this.mStateMachine.getCurrentCapturingMode(), launchCondition$ExtraOperation, str, null));
    }

    public boolean isDeviceInSecurityLock() {
        Bundle extras = getIntent().getExtras();
        return ("start-secure".equals(extras != null ? extras.getString("android.intent.extra.SUBJECT") : null) || this.mLaunchCondition.isSecurePhotoLaunchedByIntent()) && ((KeyguardManager) getSystemService("keyguard")).isKeyguardLocked();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE);
        LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE);
        LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE);
        LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE);
        CapturingMode capturingMode = this.mLaunchCondition.getCapturingMode();
        this.mLaunchCondition.setup(intent, this.mStoredSettings.getLastSettings().getCapturingMode(), this instanceof InternalCameraActivity);
        notifyActivityState("activity-resumed");
        LaunchCondition$LaunchTrigger launchTrigger = getLaunchCondition().getLaunchTrigger();
        if (launchTrigger == LaunchCondition$LaunchTrigger.LIFT_TRIGGER) {
            LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE);
        }
        if (!isLaunchedFromLocked(intent) && launchTrigger != LaunchCondition$LaunchTrigger.LIFT_TRIGGER) {
            LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE);
        }
        if (this.mIsColdBoot && capturingMode != this.mLaunchCondition.getCapturingMode()) {
            this.mIsNeedToCloseBypassCameraBecauseModeChanged = true;
        }
        this.mCanFinishByScreenOff = false;
        setIntent(intent);
    }

    private void notifyActivityState(String str) {
        Intent intent = new Intent("android.intent.action.CAMERA_BUTTON", (Uri) null);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, 27));
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.addFlags(268435456);
        intent.setPackage(getPackageName());
        getApplicationContext().sendOrderedBroadcast(intent, null);
    }

    private boolean isRecording() {
        if (this.mStateMachine != null) {
            return this.mStateMachine.isRecording();
        }
        return false;
    }

    private void releaseWearableFramework() {
        if (this.mWearableBridgeClient != null) {
            this.mWearableBridgeClient.release();
            this.mWearableBridgeClient = null;
        }
        this.mWearableBridgeLifeCycleObserver = null;
        this.mWearableBridgePhotoEventObserver = null;
        this.mWearableBridgeVideoEventObserver = null;
    }

    @Nullable
    public WearableBridgeClient getWearableBridge() {
        if (isOneShot()) {
            return null;
        }
        return this.mWearableBridgeClient;
    }

    public void notifyStateBlockedToWearable() {
        if (CamLog.VERBOSE) {
            CamLog.d("notifyStateBlockedToWearable()");
        }
        if (getWearableBridge() != null) {
            getWearableBridge().getPhotoStateNotifier().onStateChanged(AbstractCapturableState$AbstractPhotoState.BLOCKED);
            getWearableBridge().getVideoStateNotifier().onStateChanged(AbstractCapturableState$AbstractVideoState.BLOCKED);
        }
    }

    public void notifyStateIdleToWearable() {
        if (CamLog.VERBOSE) {
            CamLog.d("notifyStateIdleToWearable()");
        }
        if (getWearableBridge() != null) {
            getWearableBridge().getPhotoStateNotifier().onStateChanged(AbstractCapturableState$AbstractPhotoState.IDLE);
            getWearableBridge().getVideoStateNotifier().onStateChanged(AbstractCapturableState$AbstractVideoState.IDLE);
        }
    }

    public CameraDeviceHandler getCameraDevice() {
        return ((CameraApplication) getApplicationContext()).getCameraDevice();
    }

    @Override // android.app.Activity, android.view.Window$Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (PlatformCapability.isPrepared() && z && this.mViewFinder != null) {
            this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY, new Object[0]);
        }
    }

    public boolean isLazyInitializationRunning() {
        return this.mIsLazyInitializationRunning;
    }

    public void finishAndKillProcess() {
        prepareFinish();
        finishAndRemoveTask();
    }

    private void prepareFinish() {
        if (this.mStateMachine != null) {
            this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_PAUSE, false);
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (CamLog.VERBOSE) {
            CamLog.d("onActivityResult: requestCode: " + i + ", resultCode: " + i2);
        }
        super.onActivityResult(i, i2, intent);
        if (PlatformCapability.isPrepared()) {
            if (isDeviceInSecurityLock()) {
                ((ViewFinderImpl) this.mViewFinder).reconstructLocalCache();
            }
            if (this.mActivityResultListeners != null) {
                OnActivityResultListener onActivityResultListener = this.mActivityResultListeners.get(i);
                if (onActivityResultListener != null && onActivityResultListener.onActivityResult(i, i2, intent)) {
                    this.mActivityResultListeners.remove(i);
                }
                if (this.mActivityResultListeners.size() == 0) {
                    this.mActivityResultListeners = null;
                }
            }
            this.mLaunchCondition.onActivityResult(i, intent);
            switch (i) {
                case 16:
                case 17:
                    addExternalCameraAppContent(intent);
                    ResearchUtil.getInstance().sendDualCameraEffectEvent(getApplicationContext());
                    if (i2 == 2) {
                        finish();
                    }
                    break;
                case 18:
                    addExternalCameraAppContent(intent);
                    ResearchUtil.getInstance().sendPortraitSelfieEvent(getApplicationContext(), LocalResearchUtil.getInstance().getModeName(this.mLaunchCondition.getCapturingMode()));
                    if (i2 == 2) {
                        finish();
                    }
                    break;
                case 19:
                    if (i2 == 2) {
                        finish();
                    }
                    break;
                case 20:
                    this.mStateMachine.sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_SD_PERMISSION_DISPLAY_FINISHED, new Object[0]);
                    if (i2 == 0) {
                        this.mViewFinder.showMessageDialog(DialogId.SD_CARD_PERMISSION_UNAVAILABLE, new Object[0]);
                    }
                    break;
            }
        }
    }

    private void addExternalCameraAppContent(Intent intent) {
        ArrayList parcelableArrayListExtra;
        if (intent == null || !isDeviceInSecurityLock() || (parcelableArrayListExtra = intent.getParcelableArrayListExtra("com.sonyericsson.android.camera.extra.CAPTURED_URIS")) == null || parcelableArrayListExtra.isEmpty()) {
            return;
        }
        this.mCreateContentInfoTaskFuture = this.mBackgroundWorker.submit(new CameraActivity$CreateContentInfoTask(this, parcelableArrayListExtra));
    }

    private boolean awaitCreateContentInfoReady() {
        return getFuture(this.mCreateContentInfoTaskFuture);
    }

    private void registerForceExitRequestReceiver() {
        if (CamLog.VERBOSE) {
            CamLog.d("registerForceExitRequestReceiver()");
        }
        IntentFilter intentFilter = new IntentFilter("com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST");
        this.mForceExitRequestReceiver = new CameraActivity$ForceExitRequestReceiver(this, null);
        registerReceiver(this.mForceExitRequestReceiver, intentFilter);
        if (shouldShowWhenLocked()) {
            return;
        }
        IntentFilter intentFilter2 = new IntentFilter("com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY");
        this.mCameraActivityFinishReceiver = new CameraActivity$CameraActivityFinishBroadcastReceiver(this);
        registerReceiver(this.mCameraActivityFinishReceiver, intentFilter2);
    }

    private void unregisterForceExitRequestReceiver() {
        if (CamLog.VERBOSE) {
            CamLog.d("unregisterForceExitRequestReceiver()");
        }
        if (this.mForceExitRequestReceiver != null) {
            unregisterReceiver(this.mForceExitRequestReceiver);
            this.mForceExitRequestReceiver = null;
        }
        if (this.mCameraActivityFinishReceiver != null) {
            unregisterReceiver(this.mCameraActivityFinishReceiver);
            this.mCameraActivityFinishReceiver = null;
        }
    }

    private void createLaunchCondition() {
        this.mLaunchCondition = new LaunchCondition(new IntentReader().getVideoQualityConfigurations(getIntent()));
    }

    @Deprecated
    public StoredSettings getStoredSettings() {
        return this.mStoredSettings;
    }

    @Override // android.app.Activity
    public void finish() {
        if (!isInLockTaskMode()) {
            prepareFinish();
        }
        super.finish();
    }

    private void finishUrgently() {
        prepareFinish();
        super.finish();
    }

    public LaunchCondition getLaunchCondition() {
        return this.mLaunchCondition;
    }

    private void createBatteryChangedReceiver() {
        this.mBatteryChangedReceiver = new BatteryChangedReceiver(this, this.mBatteryChangedListener);
    }

    @Override // android.app.Activity
    public final void onResume() {
        this.mIsColdBoot = false;
        if (checkAndRequestSelfPermissions(12, this.REQUESTED_PERMISSIONS)) {
            super.onResume();
            return;
        }
        if (!PlatformCapability.isPrepared()) {
            if (PermissionsUtil.arePermissionsGranted(this, this.REQUESTED_PERMISSIONS)) {
                PlatformCapability.prepareAsync(new CameraActivity$6(this));
            }
            PlatformCapability.awaitPrepare(2000L, TimeUnit.MILLISECONDS);
            if (!PlatformCapability.isPrepared()) {
                super.onResume();
                return;
            }
        }
        if (this.mStateMachine == null && PermissionsUtil.arePermissionsGranted(this, this.REQUESTED_PERMISSIONS)) {
            super.onResume();
            recreate();
            return;
        }
        if (this.mStoredSettings == null && PermissionsUtil.arePermissionsGranted(this, this.REQUESTED_PERMISSIONS)) {
            super.onResume();
            recreate();
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("onResume(): isKeyguardLocked() = " + isKeyguardLocked());
        }
        if (this.mMainHandler == null) {
            this.mMainHandler = new Handler(getMainLooper());
        }
        this.mMainHandler.removeCallbacks(this.mOnResumeTasks);
        CameraApplication.getUiThreadHandler().removeCallbacksAndMessages(getCameraDevice().getSendPauseEventAndReleaseCameraTaskToken());
        getCameraDevice().setIsInShutdownNow(false);
        registerShutDownReceiver();
        if (isKeyguardLocked() || this.mSkippedOnResume) {
            this.mSkippedOnResume = true;
            long j = isKeyguardSecure() ? 30L : 15L;
            if (CamLog.VERBOSE) {
                CamLog.d("onResume() --> postDelayed(mOnResumeTasks," + j + ")");
            }
            this.mMainHandler.postDelayed(this.mOnResumeTasks, j);
        } else {
            if (CamLog.VERBOSE) {
                CamLog.d("onResume() --> onResumeTasks()");
            }
            this.mSkippedOnResume = false;
            onResumeTasks();
        }
        super.onResume();
    }

    @Override // android.app.Activity
    public final void onPause() {
        if (isRecording()) {
            this.mCameraDeviceHandler.stopAudioRecording();
        }
        if (!PlatformCapability.isPrepared()) {
            super.onPause();
            getCameraDevice().closeCamera();
            if (PermissionsUtil.arePermissionsGranted(this, this.REQUESTED_PERMISSIONS)) {
                finishUrgently();
                return;
            }
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("onPause(): isKeyguardLocked() = " + isKeyguardLocked());
        }
        if (this.mMainHandler != null) {
            this.mMainHandler.removeCallbacks(this.mOnResumeTasks);
        }
        CameraApplication.getUiThreadHandler().removeCallbacksAndMessages(getCameraDevice().getSendPauseEventAndReleaseCameraTaskToken());
        if (!this.mSkippedOnResume) {
            if (CamLog.DEBUG) {
                CamLog.d("onPause() --> onPauseTasks()");
            }
            onPauseTasks();
        } else {
            if (CamLog.DEBUG) {
                CamLog.d("onPause() --> postAtTime(SendPauseEventAndReleaseCameraTask,500)");
            }
            CameraApplication.getUiThreadHandler().postAtTime(this.mSendPauseEventAndReleaseCameraTask, getCameraDevice().getSendPauseEventAndReleaseCameraTaskToken(), SystemClock.uptimeMillis() + 500);
        }
        unRegisterShutDownReceiver();
        super.onPause();
    }

    public final boolean isStillImageCamera() {
        Intent intent = getIntent();
        return intent != null && "android.media.action.STILL_IMAGE_CAMERA".equals(intent.getAction());
    }

    private void muteSound() {
        AudioManager audioManager;
        if (Build$VERSION.SDK_INT < 8 || (audioManager = (AudioManager) getSystemService("audio")) == null) {
            return;
        }
        if (audioManager.requestAudioFocus(null, 3, 1) == 1) {
            if (CamLog.VERBOSE) {
                CamLog.d("muteSound: success");
            }
        } else if (CamLog.VERBOSE) {
            CamLog.d("muteSound: fail");
        }
    }

    private void unmuteSound() {
        AudioManager audioManager;
        if (Build$VERSION.SDK_INT < 8 || (audioManager = (AudioManager) getSystemService("audio")) == null) {
            return;
        }
        if (audioManager.abandonAudioFocus(null) == 1) {
            if (CamLog.VERBOSE) {
                CamLog.d("unmuteSound: success");
            }
        } else if (CamLog.VERBOSE) {
            CamLog.d("unmuteSound: fail");
        }
    }

    public void pauseAudioPlayback() {
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        sendBroadcast(intent);
        muteSound();
    }

    public final void enableAutoPowerOffTimer() {
        if (CamLog.VERBOSE) {
            CamLog.d("enableAutoPowerOffTimer: ");
        }
        this.mAutoPowerOffTimer.enableAutoPowerOffTimer();
    }

    public final void disableAutoPowerOffTimer() {
        if (CamLog.VERBOSE) {
            CamLog.d("disableAutoPowerOffTimer: ");
        }
        this.mViewFinder.hideAutoPowerOffHintText();
        this.mAutoPowerOffTimer.disableAutoPowerOffTimer();
    }

    public final void restartAutoPowerOffTimer() {
        if (CamLog.VERBOSE) {
            CamLog.d("restartAutoPowerOffTimer: ");
        }
        if (this.mAutoPowerOffTimer == null) {
            return;
        }
        postEvent(new CameraActivity$10(this));
        this.mAutoPowerOffTimer.restartAutoPowerOffTimer();
    }

    public GeotagManager getGeoTagManager() {
        return this.mGeotagManager;
    }

    private void enableOrientation() {
        if (CamLog.VERBOSE) {
            CamLog.d("enableOrientation()");
        }
        if (this.mOrientationEventListener == null) {
            this.mOrientationEventListener = new CameraActivity$ExtendedOrientationEventListener(this, this);
            this.mOrientationEventListener.enable();
        }
    }

    private void disableOrientation() {
        if (CamLog.VERBOSE) {
            CamLog.d("disableOrientation()");
        }
        if (this.mOrientationEventListener != null) {
            this.mOrientationEventListener.disable();
            this.mOrientationEventListener = null;
        }
    }

    public void addOrienationListener(CameraActivity$LayoutOrientationChangedListener cameraActivity$LayoutOrientationChangedListener) {
        this.mLayoutOrientationChangedListenerSet.add(cameraActivity$LayoutOrientationChangedListener);
    }

    public void removeOrienationListener(CameraActivity$LayoutOrientationChangedListener cameraActivity$LayoutOrientationChangedListener) {
        this.mLayoutOrientationChangedListenerSet.remove(cameraActivity$LayoutOrientationChangedListener);
    }

    private void notifyLayoutOrientationChanged(CameraActivity$LayoutOrientation cameraActivity$LayoutOrientation) {
        if (cameraActivity$LayoutOrientation == this.mLastDetectedOrientation || cameraActivity$LayoutOrientation == CameraActivity$LayoutOrientation.Unknown) {
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("ORIENTATION : Layout orientation(sensor) is changed from " + this.mLastDetectedOrientation + " to " + cameraActivity$LayoutOrientation);
        }
        this.mLastDetectedOrientation = cameraActivity$LayoutOrientation;
        Iterator<CameraActivity$LayoutOrientationChangedListener> it = this.mLayoutOrientationChangedListenerSet.iterator();
        while (it.hasNext()) {
            it.next().onLayoutOrientationChanged(this.mLastDetectedOrientation);
        }
    }

    public CameraActivity$LayoutOrientation getLayoutOrientation() {
        int i = this.mLastOrientationDegree;
        if (i == -1) {
            i = this.mLastDeterminedOrientationDegree;
        }
        if (i == -1) {
            return CameraActivity$LayoutOrientation.Unknown;
        }
        int mountAngle = (i + (360 - ProductConfig.getMountAngle(this))) % 360;
        int i2 = this.mLastDetectedOrientation == CameraActivity$LayoutOrientation.Portrait || this.mLastDetectedOrientation == CameraActivity$LayoutOrientation.ReversePortrait ? 60 : 30;
        int i3 = 90 + i2;
        if (in(mountAngle, 90 - i2, i3)) {
            return CameraActivity$LayoutOrientation.Portrait;
        }
        int i4 = 270 - i2;
        if (in(mountAngle, i3, i4)) {
            return CameraActivity$LayoutOrientation.ReverseLandscape;
        }
        if (in(mountAngle, i4, 270 + i2)) {
            return CameraActivity$LayoutOrientation.ReversePortrait;
        }
        return CameraActivity$LayoutOrientation.Landscape;
    }

    private void setLayoutOrientation(CameraActivity$LayoutOrientation cameraActivity$LayoutOrientation) {
        int orientationDegree = getOrientationDegree(cameraActivity$LayoutOrientation);
        this.mSensorOrientationDegree = orientationDegree;
        this.mLastOrientationDegree = orientationDegree;
        this.mLastDeterminedOrientationDegree = orientationDegree;
    }

    private int getOrientationDegree(CameraActivity$LayoutOrientation cameraActivity$LayoutOrientation) {
        int i;
        switch (CameraActivity$12.$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation[cameraActivity$LayoutOrientation.ordinal()]) {
            case 1:
            case 2:
                i = 0;
                break;
            case 3:
                i = 90;
                break;
            case 4:
                i = 180;
                break;
            case 5:
                i = 270;
                break;
            default:
                return -1;
        }
        return (i + ProductConfig.getMountAngle(this)) % 360;
    }

    public int getOrientation() {
        CameraActivity$LayoutOrientation layoutOrientation = this.mLastDetectedOrientation;
        if (layoutOrientation == CameraActivity$LayoutOrientation.Unknown) {
            layoutOrientation = getLayoutOrientation();
        }
        switch (CameraActivity$12.$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation[layoutOrientation.ordinal()]) {
            case 2:
            case 4:
            case 5:
                return 2;
            case 3:
                return 1;
            default:
                switch (CameraActivity$12.$SwitchMap$com$sonyericsson$cameracommon$utility$LayoutOrientationResolver$LayoutOrientationType[LayoutOrientationResolver.getInstance().getOrientation().ordinal()]) {
                    case 1:
                        return 1;
                    case 2:
                        return 2;
                    default:
                        return 0;
                }
        }
    }

    public int getSensorOrientationDegree() {
        if (CamLog.VERBOSE) {
            CamLog.d("ORIENTATION:getSensorOrientationDegree = " + this.mSensorOrientationDegree);
        }
        return this.mSensorOrientationDegree;
    }

    public CameraActivity$LayoutOrientation getLastDetectedOrientation() {
        return this.mLastDetectedOrientation;
    }

    public Storage getStorage() {
        return this.mStorage;
    }

    public boolean isOneShot() {
        return this.mLaunchCondition.getOneShotMode().isEnabled();
    }

    public boolean isOneShotPhoto() {
        return this.mLaunchCondition.getOneShotMode().isPhoto();
    }

    public boolean isOneShotVideo() {
        return this.mLaunchCondition.getOneShotMode().isVideo();
    }

    public Uri getExtraOutput() {
        return this.mLaunchCondition.getExtraOutput();
    }

    public boolean hasExtraOutputPath() {
        if (this.mLaunchCondition.getExtraOutput() == null) {
            return false;
        }
        return this.mStorage.checkValidUri(this.mLaunchCondition.getExtraOutput());
    }

    public boolean shouldAddToMediaStore() {
        return this.mLaunchCondition.getAddToMediaStore();
    }

    public boolean isGpsLocationAllowed() {
        return this.mLocationSettingsReader.getIsGpsLocationAllowed();
    }

    public boolean isNetworkLocationAllowed() {
        return this.mLocationSettingsReader.getIsNetworkLocationAllowed();
    }

    private void logLifeCycleIn(String str, CameraActivity$LifeCycleIds cameraActivity$LifeCycleIds) {
        MeasurePerformance.measureTime(CameraActivity$LifeCycleIds.access$4600(cameraActivity$LifeCycleIds), true);
        MeasurePerformance.measureResource("Start " + cameraActivity$LifeCycleIds);
        if (cameraActivity$LifeCycleIds == CameraActivity$LifeCycleIds.ON_CREATE || cameraActivity$LifeCycleIds == CameraActivity$LifeCycleIds.ON_DESTROY) {
            if (CamLog.VERBOSE) {
                CamLog.d(str, cameraActivity$LifeCycleIds + " is called:" + hashCode());
                return;
            }
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d(str, cameraActivity$LifeCycleIds + " is called");
        }
    }

    private void logLifeCycleOut(String str, CameraActivity$LifeCycleIds cameraActivity$LifeCycleIds) {
        if (CamLog.VERBOSE) {
            CamLog.d(str, cameraActivity$LifeCycleIds + " FINISH.");
        }
        MeasurePerformance.measureResource("End " + cameraActivity$LifeCycleIds);
        MeasurePerformance.measureTime(CameraActivity$LifeCycleIds.access$4600(cameraActivity$LifeCycleIds), false);
        if (cameraActivity$LifeCycleIds == CameraActivity$LifeCycleIds.ON_PAUSE) {
            MeasurePerformance.outResult();
        }
    }

    public void readLocationSettings() {
        this.mLocationSettingsReader.readLocationSettings(this);
    }

    @SuppressLint({"NewApi"})
    public boolean isInLockTaskMode() {
        return ((ActivityManager) getSystemService("activity")).getLockTaskModeState() != 0;
    }

    private boolean isLaunchedFromLocked(Intent intent) {
        String stringExtra = intent.getStringExtra("com.sonyericsson.android.camera.extra.launchTrigger");
        if (stringExtra != null) {
            return LaunchCondition$LaunchTrigger.HW_CAMERA_KEY.toString().equals(stringExtra) || LaunchCondition$LaunchTrigger.HW_CAMERA_KEY_LOCK.toString().equals(stringExtra) || LaunchCondition$LaunchTrigger.LOCK_SCREEN.toString().equals(stringExtra);
        }
        return false;
    }

    private boolean addActivityResultListener(int i, OnActivityResultListener onActivityResultListener) {
        if (this.mActivityResultListeners == null) {
            this.mActivityResultListeners = new SparseArray<>();
        }
        if (this.mActivityResultListeners.get(i) != null) {
            return false;
        }
        this.mActivityResultListeners.put(i, onActivityResultListener);
        return true;
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (isDeviceInSecurityLock()) {
            ((ViewFinderImpl) this.mViewFinder).saveLocalCache();
        }
        super.startActivityForResult(intent, i, bundle);
    }

    public boolean startActivityForResult(Intent intent, int i, OnActivityResultListener onActivityResultListener) {
        if (!addActivityResultListener(i, onActivityResultListener)) {
            return false;
        }
        startActivityForResult(intent, i);
        return true;
    }

    public boolean checkAndRequestSelfPermissions(int i, String[] strArr) {
        return checkAndRequestSelfPermissions(i, strArr, null);
    }

    public boolean checkAndRequestSelfPermissions(int i, String[] strArr, CameraActivity$PermissionCheckCallback cameraActivity$PermissionCheckCallback) {
        boolean zCheckAndRequestSelfPermissions = PermissionsUtil.checkAndRequestSelfPermissions(this, i, strArr);
        if (zCheckAndRequestSelfPermissions) {
            addActivityResultListener(i, new CameraActivity$11(this, strArr, cameraActivity$PermissionCheckCallback));
        }
        return zCheckAndRequestSelfPermissions;
    }

    public int getBatteryLevel() {
        return this.mBatteryChangedReceiver.getBatteryLevel();
    }

    public boolean isAlreadyBcl() {
        return this.mBatteryChangedReceiver.isAlreadyBcl();
    }

    private boolean isKeyguardLocked() {
        if (this.mKeyguardManager == null) {
            this.mKeyguardManager = (KeyguardManager) getSystemService("keyguard");
        }
        if (this.mKeyguardManager != null) {
            return this.mKeyguardManager.isKeyguardLocked();
        }
        return false;
    }

    public boolean isKeyguardSecure() {
        if (this.mKeyguardManager == null) {
            this.mKeyguardManager = (KeyguardManager) getSystemService("keyguard");
        }
        if (this.mKeyguardManager != null) {
            return this.mKeyguardManager.isKeyguardSecure();
        }
        return false;
    }

    @Override // android.app.Activity
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (motionEvent.isFromSource(536870912) && this.mSideTouchEventDispatcher.send(motionEvent)) {
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    public void clearLaunchCameraMode() {
        this.mLaunchCondition.clearLaunchCameraMode();
    }

    private void changeParametersForGoogleAssistant() {
        UserSettings userSettings = this.mStoredSettings.getUserSettings();
        Parameters parameters = userSettings.getParameters();
        if (parameters == null) {
            clearLaunchCameraMode();
        }
        switch (CameraActivity$12.$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$LaunchCameraMode[this.mLaunchCondition.getLaunchCameraMode().ordinal()]) {
            case 1:
                VideoCodec videoCodec = parameters.getVideoCodec();
                VideoSize videoSize = parameters.getVideoSize();
                if (videoCodec == null || videoSize == null) {
                    clearLaunchCameraMode();
                } else {
                    if (!videoSize.is4KVideo()) {
                        if (videoCodec == VideoCodec.H264) {
                            userSettings.set(VideoSize.FOUR_K_UHD_H264);
                        } else if (videoCodec == VideoCodec.H265) {
                            userSettings.set(VideoSize.FOUR_K_UHD_H265);
                        }
                    }
                    userSettings.set(VideoHdr.HDR_ON);
                }
                break;
            case 2:
                userSettings.set(SlowMotion.SUPER_SLOW_MOTION);
                break;
        }
    }

    public void enableSideSense() {
        this.mSideTouchEventDispatcher.start();
    }

    public void disableSideSense() {
        this.mSideTouchEventDispatcher.stop();
    }

    public boolean isAllowToUseLocation() {
        return !isOneShot() || PermissionsUtil.areCallerGeoPermissionsGranted(this);
    }
}
