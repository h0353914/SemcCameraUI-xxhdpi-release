package com.sonyericsson.android.camera;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.DocumentsContract;
import com.sonyericsson.android.camera.configuration.IntentReader$VideoQualityConfigurations;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.setting.ExtraSettings;
import com.sonyericsson.android.camera.setting.SharedPreferencesAccessor;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.storage.StorageUtil;
import com.sonymobile.cameracommon.research.ResearchUtil;

public class LaunchCondition {
    public static final String ACTION_FRONT_STILL_IMAGE_CAMERA = "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA";
    public static final String ACTION_FRONT_VIDEO_CAMERA = "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA";
    public static final String ACTION_QUICK_LAUNCH = "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH";
    public static final String ACTION_QUICK_LAUNCH_AND_CAPTURE = "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE";
    public static final String CAMERA_IS_VOICE_INTERACTION_ROOT = "is_voice_interaction_root";
    private static final String CAMERA_LAUNCH_HDR_WITH_4K_RESOLUTION = "HDR_WITH_4K_RESOLUTION";
    private static final String CAMERA_LAUNCH_MANUAL_MODE = "MANUAL_MODE";
    private static final String CAMERA_LAUNCH_SLOW_MOTION = "SLOW_MOTION";
    public static final String CAMERA_LAUNCH_SOURCE_LIFT_TRIGGER = "lift_to_launch_ml";
    public static final String CAMERA_LAUNCH_SOURCE_LOCKSCREEN = "lockscreen_affordance";
    public static final String CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP = "power_double_tap";
    private static final String CAMERA_LAUNCH_SUPER_SLOW_MOTION = "SUPER_SLOW_MOTION";
    public static final String EXTRA_CAMERA_LAUNCH_SOURCE = "com.android.systemui.camera_launch_source";
    private static final String EXTRA_CAMERA_MODE = "com.google.assistant.extra.CAMERA_MODE";
    private static final String EXTRA_CAMERA_OPEN_ONLY = "com.google.assistant.extra.CAMERA_OPEN_ONLY";
    public static final String EXTRA_LAUNCHED_BY_ANOTHER_CAMERA = "com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera";
    public static final String EXTRA_LAUNCHED_BY_FAST_CAPTURING = "com.sonyericsson.android.camera.extra.launchedByFastCapturing";
    private static final String EXTRA_LAUNCH_CAMERA_MODE = "android.intent.extra.CAMERA_MODE";
    public static final String EXTRA_LAUNCH_INTERNAL_CALLING_CAPTURING_MODE = "capturing_mode";
    public static final String EXTRA_LAUNCH_INTERNAL_MODE = "internal_mode";
    public static final String EXTRA_REQUEST_ADVANCED_SETTINGS_DIALOG_KEY = "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogkey";
    public static final String EXTRA_REQUEST_ADVANCED_SETTINGS_DIALOG_OPEN = "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen";
    public static final String EXTRA_REQUEST_STORAGE_SETTINGS_DIALOG_OPEN = "com.sonyericsson.android.camera3d.extra.requststoragesettingsdialogopen";
    private static final String EXTRA_TIMER_DURATION_SECONDS = "com.google.assistant.extra.TIMER_DURATION_SECONDS";
    private static final String EXTRA_USE_FRONT_CAMERA = "com.google.assistant.extra.USE_FRONT_CAMERA";
    private static final String EXTRA_USE_FRONT_CAMERA_MODE = "android.intent.extra.USE_FRONT_CAMERA";
    public static final String LAUNCH_TRIGGER = "com.sonyericsson.android.camera.extra.launchTrigger";
    public static final int RESET_LAUNCH_MODE_TIME_LIMIT_MILLIS = 30000;
    private static final int RESET_LAUNCH_TRIGGER_INTERVAL = 2000;
    private static final String TAG = "LaunchCondition";
    private SharedPreferencesAccessor mAccessor;
    private boolean mAddToMediaStore;
    private Uri mExtraOutput;
    private boolean mIsSecurePhotoLaunchedByIntent;
    private String mUserSettingKeyName;
    private final IntentReader$VideoQualityConfigurations mVideoQualityConfigurations;
    private LaunchCondition$ExtraOperation mExtraOperation = LaunchCondition$ExtraOperation.NONE;
    private CapturingMode mCapturingMode = CapturingMode.UNKNOWN;
    private LaunchCondition$OneShotMode mOneShot = LaunchCondition$OneShotMode.NONE;
    private Storage$StorageType mStorageTypeForOneshot = Storage$StorageType.INTERNAL;
    private final ExtraSettings mExtraSettings = new ExtraSettings();
    private LaunchCondition$LaunchTrigger mLaunchTrigger = LaunchCondition$LaunchTrigger.OTHER;
    private LaunchCondition$LaunchCameraMode mLaunchCameraMode = LaunchCondition$LaunchCameraMode.NONE;
    private int mGoogleAssistantSelfTimer = 0;
    private boolean mIsGoogleAssistantLaunchOnly = true;
    private long mCheckStartTimeInMillis = 0;
    private int mInternalModeValue = -1;
    private int mLaunchInternlCallingCapturingModeValue = -1;
    private boolean mIsLaunchedByIntent = false;
    private boolean mIsLaunchedByActivityResult = false;

    public void onActivityResult(int i, Intent intent) {
        if (i != 14) {
            switch (i) {
                case 8:
                    setLaunchTrigger(LaunchCondition$LaunchTrigger.VIEWER);
                    updateCheckStartTime();
                    break;
                case 9:
                    setLaunchTrigger(LaunchCondition$LaunchTrigger.VIEWER);
                    updateCheckStartTime();
                    break;
                default:
                    switch (i) {
                        case 16:
                        case 17:
                            setLaunchTrigger(LaunchCondition$LaunchTrigger.DUAL_CAMERA_EFFECT);
                            setCapturingMode(CapturingMode.SCENE_RECOGNITION, LaunchCondition$OneShotMode.NONE);
                            updateCheckStartTime();
                            break;
                        case 18:
                            setLaunchTrigger(LaunchCondition$LaunchTrigger.PORTRAIT_SELFIE);
                            setCapturingMode(CapturingMode.SCENE_RECOGNITION, LaunchCondition$OneShotMode.NONE);
                            updateCheckStartTime();
                            break;
                        case 19:
                            setLaunchTrigger(LaunchCondition$LaunchTrigger.ADDONS);
                            setCapturingMode(CapturingMode.SCENE_RECOGNITION, LaunchCondition$OneShotMode.NONE);
                            updateCheckStartTime();
                            break;
                    }
                    break;
            }
        } else {
            setLaunchTrigger(LaunchCondition$LaunchTrigger.VIDEO_EDITOR);
            updateCheckStartTime();
        }
        this.mIsLaunchedByActivityResult = true;
    }

    public void onRestart(boolean z, boolean z2) {
        clearLaunchTrigger();
        if (this.mIsLaunchedByIntent || this.mIsLaunchedByActivityResult) {
            return;
        }
        if (!(z && z2) && isResetCapturingMode(this.mOneShot.isEnabled())) {
            setCapturingMode(CapturingMode.SCENE_RECOGNITION);
        }
    }

    public LaunchCondition$LaunchTrigger getLaunchTrigger() {
        return this.mLaunchTrigger;
    }

    private void setLaunchTrigger(LaunchCondition$LaunchTrigger launchCondition$LaunchTrigger) {
        this.mLaunchTrigger = launchCondition$LaunchTrigger;
    }

    public void onResume() {
        clearLaunchTrigger();
    }

    private void clearLaunchTrigger() {
        if (isTimeIntervalBeyondThreshold() && this.mExtraOperation == LaunchCondition$ExtraOperation.NONE) {
            setLaunchTrigger(LaunchCondition$LaunchTrigger.OTHER);
        }
    }

    public void onPause() {
        this.mIsLaunchedByIntent = false;
        this.mIsLaunchedByActivityResult = false;
        this.mGoogleAssistantSelfTimer = 0;
        this.mIsGoogleAssistantLaunchOnly = true;
        this.mExtraSettings.clearAll();
    }

    public boolean isSecurePhotoLaunchedByIntent() {
        return this.mIsSecurePhotoLaunchedByIntent;
    }

    private void setIsSecurePhotoLaunchedByIntent(boolean z) {
        this.mIsSecurePhotoLaunchedByIntent = z;
    }

    public Uri getExtraOutput() {
        return this.mExtraOutput;
    }

    private void setExtraOutput(Uri uri) {
        this.mExtraOutput = uri;
    }

    public boolean getAddToMediaStore() {
        return this.mAddToMediaStore;
    }

    private void setAddToMediaStore(boolean z) {
        this.mAddToMediaStore = z;
    }

    public void setup(Intent intent, CapturingMode capturingMode, boolean z) {
        String action;
        if (CamLog.VERBOSE) {
            CamLog.d("setup: " + intent);
        }
        this.mIsLaunchedByIntent = true;
        action = intent.getAction();
        if (action == null) {
            action = "android.intent.action.MAIN";
            intent.setAction("android.intent.action.MAIN");
        }
        setLaunchTrigger(LaunchCondition$LaunchTrigger.OTHER);
        if (isResetCapturingMode(action == "android.media.action.IMAGE_CAPTURE" || action == "android.media.action.IMAGE_CAPTURE_SECURE" || action == "android.media.action.VIDEO_CAPTURE")) {
            capturingMode = CapturingMode.SCENE_RECOGNITION;
        }
        setIsSecurePhotoLaunchedByIntent(false);
        clearLaunchCameraMode();
        this.mGoogleAssistantSelfTimer = 0;
        this.mIsGoogleAssistantLaunchOnly = true;
        if (CamLog.VERBOSE) {
            CamLog.d("setLaunchMode: action: " + action);
        }
        switch (action) {
            case "android.intent.action.MAIN":
            case "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH":
                if (capturingMode == CapturingMode.UNKNOWN) {
                    setCapturingMode(CapturingMode.SCENE_RECOGNITION, LaunchCondition$OneShotMode.NONE);
                    break;
                } else {
                    setCapturingMode(capturingMode, LaunchCondition$OneShotMode.NONE);
                    break;
                }
                break;
            case "android.media.action.IMAGE_CAPTURE":
                setCapturingMode(getOneShotCapturingMode(capturingMode), LaunchCondition$OneShotMode.PHOTO);
                break;
            case "android.media.action.IMAGE_CAPTURE_SECURE":
                setIsSecurePhotoLaunchedByIntent(true);
                setCapturingMode(CapturingMode.SCENE_RECOGNITION, LaunchCondition$OneShotMode.PHOTO);
                break;
            case "android.media.action.VIDEO_CAPTURE":
                CapturingMode capturingMode2 = CapturingMode.VIDEO;
                if (getOneShotCapturingMode(capturingMode) == CapturingMode.SUPERIOR_FRONT) {
                    capturingMode2 = CapturingMode.FRONT_VIDEO;
                }
                setCapturingMode(capturingMode2, LaunchCondition$OneShotMode.VIDEO);
                break;
            case "android.media.action.STILL_IMAGE_CAMERA":
                if (isLaunchedByPowerKeyDoubleTap(intent) || isLaunchedByLockScreen(intent)) {
                    if (capturingMode == CapturingMode.UNKNOWN) {
                        setCapturingMode(CapturingMode.SCENE_RECOGNITION, LaunchCondition$OneShotMode.NONE);
                    } else {
                        setCapturingMode(capturingMode, LaunchCondition$OneShotMode.NONE);
                    }
                    break;
                } else {
                    setCapturingMode(CapturingMode.SCENE_RECOGNITION, LaunchCondition$OneShotMode.NONE);
                    checkLaunchCameraModeFromGoogleAssistant(action, intent, z);
                    break;
                }
                break;
            case "android.media.action.STILL_IMAGE_CAMERA_SECURE":
                setIsSecurePhotoLaunchedByIntent(true);
                if ((!isLaunchedByPowerKeyDoubleTap(intent) && !isLaunchedByLockScreen(intent)) || capturingMode == CapturingMode.UNKNOWN) {
                    setCapturingMode(CapturingMode.SCENE_RECOGNITION, LaunchCondition$OneShotMode.NONE);
                    break;
                } else {
                    setCapturingMode(capturingMode, LaunchCondition$OneShotMode.NONE);
                    break;
                }
                break;
            case "android.media.action.VIDEO_CAMERA":
                setCapturingMode(CapturingMode.VIDEO, LaunchCondition$OneShotMode.NONE);
                checkLaunchCameraModeFromGoogleAssistant(action, intent, z);
                break;
            case "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA":
                if (PlatformCapability.isFrontCameraSupported()) {
                    setCapturingMode(CapturingMode.SUPERIOR_FRONT, LaunchCondition$OneShotMode.NONE);
                    break;
                }
                break;
            case "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA":
                setCapturingMode(CapturingMode.FRONT_VIDEO, LaunchCondition$OneShotMode.NONE);
                break;
            case "com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE":
                this.mExtraOperation = LaunchCondition$ExtraOperation.LAUNCH_AND_CAPTURE;
                setCapturingMode(CapturingMode.SCENE_RECOGNITION, LaunchCondition$OneShotMode.NONE);
                break;
            default:
                if (action.equals(CapturingMode.NORMAL.getValue())) {
                    setCapturingMode(CapturingMode.NORMAL, LaunchCondition$OneShotMode.NONE);
                    break;
                } else {
                    if (action.equals(CapturingMode.FRONT_PHOTO.getValue())) {
                        setCapturingMode(CapturingMode.FRONT_PHOTO, LaunchCondition$OneShotMode.NONE);
                    } else if (action.equals(CapturingMode.SLOW_MOTION.getValue())) {
                        setCapturingMode(CapturingMode.SLOW_MOTION, LaunchCondition$OneShotMode.NONE);
                    } else {
                        setCapturingMode(CapturingMode.SCENE_RECOGNITION, LaunchCondition$OneShotMode.NONE);
                    }
                    break;
                }
                break;
        }
        Bundle extras = intent.getExtras();
        if (extras != null && getOneShotMode().isEnabled()) {
            for (String str : extras.keySet()) {
                if (CamLog.VERBOSE) {
                    CamLog.d("#### intent extra key: " + str);
                }
            }
            setExtraOutput((Uri) extras.getParcelable("output"));
            setAddToMediaStore(extras.getBoolean("addToMediaStore"));
        } else {
            setExtraOutput(null);
            setAddToMediaStore(true);
        }
        if (getOneShotMode().isEnabled()) {
            this.mStorageTypeForOneshot = Storage$StorageType.INTERNAL;
            if (StorageUtil.getStorageTypeFromUri(getExtraOutput(), CameraApplication.getContext()) == Storage$StorageType.EXTERNAL_CARD) {
                this.mStorageTypeForOneshot = Storage$StorageType.EXTERNAL_CARD;
            }
        }
        readExtra(intent);
        String stringExtra = intent.getStringExtra("com.sonyericsson.android.camera.extra.launchTrigger");
        if (stringExtra != null) {
            if (LaunchCondition$LaunchTrigger.HW_CAMERA_KEY.toString().equals(stringExtra)) {
                setLaunchTrigger(LaunchCondition$LaunchTrigger.HW_CAMERA_KEY);
            } else if (LaunchCondition$LaunchTrigger.HW_CAMERA_KEY_LOCK.toString().equals(stringExtra)) {
                setLaunchTrigger(LaunchCondition$LaunchTrigger.HW_CAMERA_KEY_LOCK);
            } else if (LaunchCondition$LaunchTrigger.LOCK_SCREEN.toString().equals(stringExtra)) {
                setLaunchTrigger(LaunchCondition$LaunchTrigger.LOCK_SCREEN);
            } else if (LaunchCondition$LaunchTrigger.ADDONS.toString().equals(stringExtra)) {
                setLaunchTrigger(LaunchCondition$LaunchTrigger.ADDONS);
            }
        }
        if (getExtraOperation() == LaunchCondition$ExtraOperation.OPEN_SETTINGS_MENU) {
            setLaunchTrigger(LaunchCondition$LaunchTrigger.SETTINGS_SECURE_LOCK);
        }
        if (isLaunchedByLockScreen(intent)) {
            setLaunchTrigger(LaunchCondition$LaunchTrigger.LOCK_SCREEN);
        } else if (isLaunchedByPowerKeyDoubleTap(intent)) {
            setLaunchTrigger(LaunchCondition$LaunchTrigger.POWER_KEY_DOUBLE_TAP);
        } else if (isLaunchedByLiftTrigger(intent)) {
            setLaunchTrigger(LaunchCondition$LaunchTrigger.LIFT_TRIGGER);
        }
        if (getLaunchTrigger() == LaunchCondition$LaunchTrigger.OTHER) {
            if (getOneShotMode().isEnabled()) {
                setLaunchTrigger(LaunchCondition$LaunchTrigger.ONE_SHOT_APP);
            } else {
                setLaunchTrigger(LaunchCondition$LaunchTrigger.HOME);
            }
        }
        if (intent.hasExtra("internal_mode")) {
            this.mInternalModeValue = intent.getIntExtra("internal_mode", ModeSelectorInternalMode.MANUAL.ordinal());
            intent.removeExtra("internal_mode");
        }
        if (intent.hasExtra("capturing_mode")) {
            this.mLaunchInternlCallingCapturingModeValue = intent.getIntExtra("capturing_mode", CapturingMode.NORMAL.ordinal());
            intent.removeExtra("capturing_mode");
        }
        updateCheckStartTime();
    }

    private boolean isLaunchedByPowerKeyDoubleTap(Intent intent) {
        return "power_double_tap".equals(intent.getStringExtra("com.android.systemui.camera_launch_source"));
    }

    private boolean isLaunchedByLiftTrigger(Intent intent) {
        return "lift_to_launch_ml".equals(intent.getStringExtra("com.android.systemui.camera_launch_source"));
    }

    private static boolean isLaunchedByLockScreen(Intent intent) {
        return "lockscreen_affordance".equals(intent.getStringExtra("com.android.systemui.camera_launch_source"));
    }

    private CapturingMode getOneShotCapturingMode(CapturingMode capturingMode) {
        return (capturingMode == CapturingMode.SUPERIOR_FRONT || capturingMode == CapturingMode.FRONT_PHOTO || capturingMode == CapturingMode.FRONT_VIDEO) ? CapturingMode.SUPERIOR_FRONT : CapturingMode.SCENE_RECOGNITION;
    }

    private boolean isResetCapturingMode(boolean z) {
        if (z || this.mIsLaunchedByActivityResult) {
            return false;
        }
        if (this.mAccessor == null) {
            this.mAccessor = new SharedPreferencesAccessor(CameraApplication.getContext(), "com.sonyericsson.android.camera.shared_preferences");
        }
        long j = this.mAccessor.readLong("KEY_TIME_APP_PAUSED", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j != 0) {
            return jCurrentTimeMillis < j || jCurrentTimeMillis - j > 30000;
        }
        return false;
    }

    public void setCapturingMode(CapturingMode capturingMode, LaunchCondition$OneShotMode launchCondition$OneShotMode) {
        this.mCapturingMode = capturingMode;
        this.mOneShot = launchCondition$OneShotMode;
    }

    public void setCapturingMode(CapturingMode capturingMode) {
        this.mCapturingMode = capturingMode;
    }

    public LaunchCondition(IntentReader$VideoQualityConfigurations intentReader$VideoQualityConfigurations) {
        this.mVideoQualityConfigurations = intentReader$VideoQualityConfigurations;
    }

    public IntentReader$VideoQualityConfigurations getVideoQualityConfigurations() {
        return this.mVideoQualityConfigurations;
    }

    public LaunchCondition$ExtraOperation getExtraOperation() {
        if (CamLog.VERBOSE) {
            CamLog.d("getExtraOperation: " + this.mExtraOperation);
        }
        return this.mExtraOperation;
    }

    public ExtraSettings getExtraSettings() {
        return this.mExtraSettings;
    }

    public String getUserSettingKeyName() {
        if (CamLog.VERBOSE) {
            CamLog.d("getUserSettingKeyName: " + this.mUserSettingKeyName);
        }
        return this.mUserSettingKeyName;
    }

    public CapturingMode getCapturingMode() {
        return this.mCapturingMode;
    }

    public void clearExtraOperation() {
        this.mExtraOperation = LaunchCondition$ExtraOperation.NONE;
        this.mUserSettingKeyName = null;
    }

    public LaunchCondition$OneShotMode getOneShotMode() {
        return this.mOneShot;
    }

    public Storage$StorageType getStorageTypeForOneshot() {
        return this.mStorageTypeForOneshot;
    }

    private void readExtra(Intent intent) {
        if (intent.getBooleanExtra("com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen", false)) {
            this.mExtraOperation = LaunchCondition$ExtraOperation.OPEN_SETTINGS_MENU;
            this.mUserSettingKeyName = intent.getStringExtra("com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogkey");
        } else if (getExtraOperation() == LaunchCondition$ExtraOperation.OPEN_SETTINGS_MENU) {
            clearExtraOperation();
        }
    }

    public LaunchCondition$LaunchCameraMode getLaunchCameraMode() {
        return this.mLaunchCameraMode;
    }

    public int getGoogleAssistantSelfTimer() {
        return this.mGoogleAssistantSelfTimer;
    }

    public boolean isGoogleAssistantLaunchOnly() {
        return this.mIsGoogleAssistantLaunchOnly;
    }

    public void clearLaunchCameraMode() {
        setLaunchCameraMode(LaunchCondition$LaunchCameraMode.NONE);
    }

    private void setLaunchCameraMode(LaunchCondition$LaunchCameraMode launchCondition$LaunchCameraMode) {
        this.mLaunchCameraMode = launchCondition$LaunchCameraMode;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkLaunchCameraModeFromGoogleAssistant(String str, Intent intent, boolean z) {
        String stringExtra;
        byte b = 1;
        boolean z2 = intent.getBooleanExtra("is_voice_interaction_root", false) && z;
        if (LaunchCondition$LaunchTrigger.APP_SHORTCUT.toString().equals(intent.getStringExtra("com.sonyericsson.android.camera.extra.launchTrigger"))) {
            setLaunchTrigger(LaunchCondition$LaunchTrigger.APP_SHORTCUT);
        } else {
            if (intent.hasCategory("android.intent.category.VOICE") || (!isLaunchedByLockScreen(intent) && !isLaunchedByPowerKeyDoubleTap(intent) && !isLaunchedByLiftTrigger(intent))) {
                setLaunchTrigger(LaunchCondition$LaunchTrigger.GOOGLE_ASSISTANT);
            }
            if (z2) {
                this.mIsGoogleAssistantLaunchOnly = intent.getBooleanExtra("com.google.assistant.extra.CAMERA_OPEN_ONLY", false);
            }
        }
        if (intent.hasExtra("com.google.assistant.extra.CAMERA_MODE")) {
            stringExtra = intent.getStringExtra("com.google.assistant.extra.CAMERA_MODE");
        } else {
            stringExtra = intent.getStringExtra("android.intent.extra.CAMERA_MODE");
        }
        boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.USE_FRONT_CAMERA", false) | intent.getBooleanExtra("com.google.assistant.extra.USE_FRONT_CAMERA", false);
        int iHashCode = str.hashCode();
        if (iHashCode != 464109999) {
            b = (iHashCode == 1130890360 && str.equals("android.media.action.VIDEO_CAMERA")) ? (byte) 0 : (byte) -1;
        } else if (!str.equals("android.media.action.STILL_IMAGE_CAMERA")) {
        }
        switch (b) {
            case 0:
                if ("HDR_WITH_4K_RESOLUTION".equals(stringExtra)) {
                    if (PlatformCapability.isVideoHdrSupported(CameraInfo$CameraId.BACK)) {
                        setLaunchCameraMode(LaunchCondition$LaunchCameraMode.FOUR_K_HDR);
                    }
                    break;
                } else if ("SLOW_MOTION".equals(stringExtra)) {
                    setCapturingMode(CapturingMode.SLOW_MOTION, LaunchCondition$OneShotMode.NONE);
                    setLaunchCameraMode(LaunchCondition$LaunchCameraMode.SLOW_MOTION);
                    break;
                } else if ("SUPER_SLOW_MOTION".toString().equals(stringExtra)) {
                    if (PlatformCapability.isSuperSlowMotionSupported(CameraInfo$CameraId.BACK)) {
                        setCapturingMode(CapturingMode.SLOW_MOTION, LaunchCondition$OneShotMode.NONE);
                        setLaunchCameraMode(LaunchCondition$LaunchCameraMode.SUPER_SLOW_MOTION);
                    }
                    break;
                } else if (booleanExtra && PlatformCapability.isFrontCameraSupported()) {
                    setCapturingMode(CapturingMode.FRONT_VIDEO, LaunchCondition$OneShotMode.NONE);
                    break;
                }
                break;
            case 1:
                if (z2) {
                    if (intent.hasExtra("com.google.assistant.extra.TIMER_DURATION_SECONDS")) {
                        int intExtra = intent.getIntExtra("com.google.assistant.extra.TIMER_DURATION_SECONDS", 0);
                        ResearchUtil.getInstance().setAssistSelfTimer(intExtra);
                        if (intExtra <= 3) {
                            intExtra = 3;
                        } else if (intExtra >= 30) {
                            intExtra = 30;
                        }
                        this.mGoogleAssistantSelfTimer = intExtra * 1000;
                        this.mIsGoogleAssistantLaunchOnly = false;
                    } else if (!isGoogleAssistantLaunchOnly()) {
                        this.mGoogleAssistantSelfTimer = 3000;
                    }
                    SelfTimer.LAUNCH_AND_CAPTURE_COUNT_DOWN.setDurationInMillisecond(getGoogleAssistantSelfTimer());
                }
                if (booleanExtra && PlatformCapability.isFrontCameraSupported()) {
                    if ("MANUAL_MODE".equals(stringExtra)) {
                        setCapturingMode(CapturingMode.FRONT_PHOTO, LaunchCondition$OneShotMode.NONE);
                    } else {
                        setCapturingMode(CapturingMode.SUPERIOR_FRONT, LaunchCondition$OneShotMode.NONE);
                    }
                } else if ("MANUAL_MODE".equals(stringExtra)) {
                    setCapturingMode(CapturingMode.NORMAL, LaunchCondition$OneShotMode.NONE);
                }
                break;
        }
    }

    public boolean isCorrectExtraOutputPath() {
        if (this.mExtraOutput != null) {
            if (!DocumentsContract.isDocumentUri(CameraApplication.getContext(), this.mExtraOutput)) {
                if (StorageUtil.getStorageTypeFromUri(this.mExtraOutput, CameraApplication.getContext()) == Storage$StorageType.EXTERNAL_CARD && !"content".equalsIgnoreCase(this.mExtraOutput.getScheme())) {
                    return false;
                }
            } else if (!StorageUtil.exists(CameraApplication.getContext(), this.mExtraOutput)) {
                return false;
            }
        }
        return true;
    }

    private void updateCheckStartTime() {
        this.mCheckStartTimeInMillis = SystemClock.elapsedRealtime();
    }

    private boolean isTimeIntervalBeyondThreshold() {
        return SystemClock.elapsedRealtime() - this.mCheckStartTimeInMillis > 2000;
    }

    public boolean isLaunchInternalMode() {
        return this.mInternalModeValue != -1;
    }

    public int getLaunchInternalMode() {
        return this.mInternalModeValue;
    }

    public void clearLaunchInternalMode() {
        this.mInternalModeValue = -1;
    }

    public int getLaunchInternalCallingCapturingMode() {
        return this.mLaunchInternlCallingCapturingModeValue;
    }

    public void clearLaunchInternalCallingCapturingMode() {
        this.mLaunchInternlCallingCapturingModeValue = -1;
    }
}
