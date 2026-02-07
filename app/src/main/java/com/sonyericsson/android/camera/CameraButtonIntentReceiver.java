package com.sonyericsson.android.camera;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.widget.Toast;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.controller.VibrationManager;
import com.sonyericsson.android.camera.controller.VibrationManager$VibrationPattern;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$MeasurementKey;
import com.sonyericsson.android.camera.setting.LastSettings;
import com.sonyericsson.android.camera.setting.SettingsFactory;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.util.Timer;

/* JADX INFO: loaded from: classes.dex */
public class CameraButtonIntentReceiver extends BroadcastReceiver {
    private static final int CAMERA_DEVICE_AUTO_RELEASE_TIMER_DURATION = 5000;
    private static final String NORMAL_LAUNCH_FAST_CAPTURE_START_SUBJECT = "start";
    private static final long START_UP_WAKE_LOCK_DURATION_MILLIS = 1000;
    private static final String TAG = "CameraButtonIntentReceiver";
    private static Timer sReleaseTimer;
    private static final Object sReleaseTimerLock = new Object();
    private static CameraButtonIntentReceiver$ReceiverState sCurrentState = CameraButtonIntentReceiver$ReceiverState.IDLE;
    private static CameraButtonIntentReceiver$IntentKind sLatestIntent = CameraButtonIntentReceiver$IntentKind.NULL;

    public static final void preload() {
    }

    static /* synthetic */ Object access$100() {
        return sReleaseTimerLock;
    }

    static /* synthetic */ Timer access$200() {
        return sReleaseTimer;
    }

    static /* synthetic */ Timer access$202(Timer timer) {
        sReleaseTimer = timer;
        return timer;
    }

    static /* synthetic */ void access$300(CameraButtonIntentReceiver$ReceiverState cameraButtonIntentReceiver$ReceiverState) {
        changeStateTo(cameraButtonIntentReceiver$ReceiverState);
    }

    private static void changeStateTo(CameraButtonIntentReceiver$ReceiverState cameraButtonIntentReceiver$ReceiverState) {
        if (CamLog.DEBUG) {
            CamLog.d("changeTo:" + cameraButtonIntentReceiver$ReceiverState + " from:" + sCurrentState);
        }
        sCurrentState = cameraButtonIntentReceiver$ReceiverState;
    }

    private static void setLatestIntent(CameraButtonIntentReceiver$IntentKind cameraButtonIntentReceiver$IntentKind) {
        sLatestIntent = cameraButtonIntentReceiver$IntentKind;
    }

    @Override // android.content.BroadcastReceiver
    public final synchronized void onReceive(Context context, Intent intent) {
        if (isOrderedBroadcast()) {
            abortBroadcast();
            if (CamLog.DEBUG) {
                CamLog.d("Intent has been aborted.");
            }
        }
        Intent intent2 = new Intent("android.intent.action.MAIN");
        intent2.setClass(context, CameraActivity.class);
        if (!CommonUtility.isActivityAvailable(context, intent2)) {
            CamLog.i("Camera is disabled, so the request to start camera is refused.");
            return;
        }
        String stringExtra = intent.getStringExtra("android.intent.extra.SUBJECT");
        if ("prepare".equals(stringExtra)) {
            PerfLog.FAST_CAMERA_BUTTON_INTENT_RECEIVED.transit();
            setLatestIntent(CameraButtonIntentReceiver$IntentKind.PREPARE);
        } else if ("start".equals(stringExtra)) {
            setLatestIntent(CameraButtonIntentReceiver$IntentKind.START);
        } else if ("start-secure".equals(stringExtra)) {
            setLatestIntent(CameraButtonIntentReceiver$IntentKind.START_SECURE);
        } else if ("cancel".equals(stringExtra)) {
            setLatestIntent(CameraButtonIntentReceiver$IntentKind.CANCEL);
        } else if ("activity-resumed".equals(stringExtra)) {
            setLatestIntent(CameraButtonIntentReceiver$IntentKind.ACTIVITY_RESUMED);
        } else if ("activity-paused".equals(stringExtra)) {
            setLatestIntent(CameraButtonIntentReceiver$IntentKind.ACTIVITY_PAUSED);
        } else {
            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
        }
        LastSettings lastSettings = SettingsFactory.create(context, ((CameraApplication) context.getApplicationContext()).getStorage()).getLastSettings();
        CamLog.i("Receive intent for camera. kind:" + sLatestIntent + " state:" + sCurrentState + " lastMode:" + lastSettings.getFastCapture() + " inLockMode:" + isInLockTaskMode(context));
        switch (CameraButtonIntentReceiver$1.$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$ReceiverState[sCurrentState.ordinal()]) {
            case 1:
                switch (CameraButtonIntentReceiver$1.$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind[sLatestIntent.ordinal()]) {
                    case 1:
                        if (!isQuickLaunchValid(lastSettings)) {
                            return;
                        }
                        if (isInLockTaskMode(context)) {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
                        } else {
                            onNullReceived(context, lastSettings);
                            startMeasurement(context, sLatestIntent);
                        }
                        break;
                    case 2:
                        if (!isQuickLaunchValid(lastSettings)) {
                            return;
                        }
                        if (isInLockTaskMode(context)) {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
                        } else {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.PREPARE);
                            onPrepareReceived(context, lastSettings);
                            startMeasurement(context, sLatestIntent);
                        }
                        break;
                    case 3:
                        if (!isQuickLaunchValid(lastSettings)) {
                            return;
                        }
                        if (isInLockTaskMode(context)) {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
                        } else {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.STARTING);
                            onDirectStartReceived(context, stringExtra, lastSettings);
                            startMeasurement(context, sLatestIntent);
                        }
                        showScreenPinnedToastMessage(context);
                        break;
                    case 4:
                        if (!isQuickLaunchValid(lastSettings)) {
                            return;
                        }
                        if (isInLockTaskMode(context)) {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
                        } else {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.STARTING);
                            onDirectStartReceived(context, stringExtra, lastSettings);
                            startMeasurement(context, sLatestIntent);
                        }
                        showScreenPinnedToastMessage(context);
                        break;
                    case 6:
                        changeStateTo(CameraButtonIntentReceiver$ReceiverState.ACTIVE);
                        break;
                }
                break;
            case 2:
                switch (CameraButtonIntentReceiver$1.$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind[sLatestIntent.ordinal()]) {
                    case 3:
                        if (isInLockTaskMode(context)) {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
                        } else {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.STARTING);
                            onStartReceived(context, stringExtra, lastSettings);
                            wakeUpAndVibrateOnLaunch(context);
                        }
                        break;
                    case 4:
                        if (isInLockTaskMode(context)) {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
                        } else {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.STARTING);
                            onStartReceived(context, stringExtra, lastSettings);
                            wakeUpAndVibrateOnLaunch(context);
                        }
                        break;
                    case 5:
                        changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                        onCancelReceived(context);
                        break;
                    case 6:
                        releaseCameraDeviceReleaseTimer();
                        changeStateTo(CameraButtonIntentReceiver$ReceiverState.ACTIVE);
                        startCameraDeviceReleaseTimer(context);
                        break;
                }
                break;
            case 3:
                switch (CameraButtonIntentReceiver$1.$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind[sLatestIntent.ordinal()]) {
                    case 1:
                        releaseCameraDeviceReleaseTimer();
                        if (!isQuickLaunchValid(lastSettings)) {
                            return;
                        }
                        if (isInLockTaskMode(context)) {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
                        } else {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            onNullReceived(context, lastSettings);
                            startMeasurement(context, sLatestIntent);
                        }
                        break;
                    case 2:
                        releaseCameraDeviceReleaseTimer();
                        if (!isQuickLaunchValid(lastSettings)) {
                            return;
                        }
                        if (isInLockTaskMode(context)) {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
                        } else {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.PREPARE);
                            onPrepareReceived(context, lastSettings);
                            startMeasurement(context, sLatestIntent);
                        }
                        break;
                    case 3:
                        releaseCameraDeviceReleaseTimer();
                        if (!isQuickLaunchValid(lastSettings)) {
                            return;
                        }
                        if (isInLockTaskMode(context)) {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
                        } else {
                            onDirectStartReceived(context, stringExtra, lastSettings);
                            startMeasurement(context, sLatestIntent);
                        }
                        break;
                    case 4:
                        releaseCameraDeviceReleaseTimer();
                        if (!isQuickLaunchValid(lastSettings)) {
                            return;
                        }
                        if (isInLockTaskMode(context)) {
                            changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                            setLatestIntent(CameraButtonIntentReceiver$IntentKind.NULL);
                        } else {
                            onDirectStartReceived(context, stringExtra, lastSettings);
                            startMeasurement(context, sLatestIntent);
                        }
                        break;
                    case 6:
                        changeStateTo(CameraButtonIntentReceiver$ReceiverState.ACTIVE);
                        break;
                    case 7:
                        changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                        break;
                }
                break;
            case 4:
                switch (CameraButtonIntentReceiver$1.$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind[sLatestIntent.ordinal()]) {
                    case 6:
                        releaseCameraDeviceReleaseTimer();
                        break;
                    case 7:
                        changeStateTo(CameraButtonIntentReceiver$ReceiverState.IDLE);
                        break;
                }
                break;
        }
    }

    private void wakeUpAndVibrateOnLaunch(Context context) {
        ((PowerManager) context.getSystemService("power")).newWakeLock(268435482, "CameraButtonIntentReceiver").acquire(1000L);
        VibrationManager.vibrate(context, VibrationManager$VibrationPattern.EFFECT_STANDARD);
    }

    private void startMeasurement(Context context, CameraButtonIntentReceiver$IntentKind cameraButtonIntentReceiver$IntentKind) {
        switch (CameraButtonIntentReceiver$1.$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind[cameraButtonIntentReceiver$IntentKind.ordinal()]) {
            case 1:
                LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE);
                LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE);
                break;
            case 2:
                LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE);
                LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE);
                break;
            case 3:
            case 4:
                LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE);
                LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE);
                break;
        }
    }

    private boolean isQuickLaunchValid(LastSettings lastSettings) {
        return lastSettings.getFastCapture() != FastCapture.OFF;
    }

    private void showScreenPinnedToastMessage(Context context) {
        if (isInLockTaskMode(context)) {
            Toast.makeText(context, 2131690093, 0).show();
        }
    }

    @SuppressLint({"NewApi"})
    private boolean isInLockTaskMode(Context context) {
        return ((ActivityManager) context.getSystemService("activity")).getLockTaskModeState() != 0;
    }

    private void onNullReceived(Context context, LastSettings lastSettings) {
        FastCapture fastCapture = lastSettings.getFastCapture();
        if (fastCapture == FastCapture.LAUNCH_AND_CAPTURE) {
            ((CameraApplication) context.getApplicationContext()).getCameraDevice().preloadCamera(context, null, CapturingMode.SCENE_RECOGNITION, true);
        }
        Intent intent = new Intent();
        if (fastCapture == FastCapture.LAUNCH_AND_CAPTURE) {
            intent.setAction("com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE");
        } else {
            intent.setAction("com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH");
        }
        intent.setClass(context, CameraActivityOnLockScreen.class);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", "start");
        intent.putExtra("com.sonyericsson.android.camera.extra.launchTrigger", LaunchCondition$LaunchTrigger.HW_CAMERA_KEY.toString());
        context.startActivity(intent);
    }

    private void onPrepareReceived(Context context, LastSettings lastSettings) {
        Intent intent = new Intent("com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST");
        intent.setFlags(268435456);
        context.sendBroadcast(intent);
        if (lastSettings.getFastCapture() == FastCapture.LAUNCH_AND_CAPTURE) {
            ((CameraApplication) context.getApplicationContext()).getCameraDevice().preloadCamera(context, null, CapturingMode.SCENE_RECOGNITION, true);
            startCameraDeviceReleaseTimer(context);
        }
    }

    private void onStartReceived(Context context, String str, LastSettings lastSettings) {
        FastCapture fastCapture = lastSettings.getFastCapture();
        if (fastCapture == FastCapture.LAUNCH_AND_CAPTURE) {
            ((CameraApplication) context.getApplicationContext()).getCameraDevice().preloadCamera(context, null, CapturingMode.SCENE_RECOGNITION, true);
        }
        Intent intent = new Intent();
        if (fastCapture == FastCapture.LAUNCH_AND_CAPTURE) {
            intent.setAction("com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE");
        } else {
            intent.setAction("com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH");
        }
        intent.setClass(context, CameraActivityOnLockScreen.class);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("com.sonyericsson.android.camera.extra.launchTrigger", LaunchCondition$LaunchTrigger.HW_CAMERA_KEY_LOCK.toString());
        context.startActivity(intent);
    }

    private void onDirectStartReceived(Context context, String str, LastSettings lastSettings) {
        FastCapture fastCapture = lastSettings.getFastCapture();
        if (fastCapture == FastCapture.LAUNCH_AND_CAPTURE) {
            ((CameraApplication) context.getApplicationContext()).getCameraDevice().preloadCamera(context, null, CapturingMode.SCENE_RECOGNITION, true);
        }
        Intent intent = new Intent();
        if (fastCapture == FastCapture.LAUNCH_AND_CAPTURE) {
            intent.setAction("com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH_AND_CAPTURE");
        } else {
            intent.setAction("com.sonyericsson.android.camera.intent.action.QUICK_LAUNCH");
        }
        intent.setClass(context, CameraActivityOnLockScreen.class);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("com.sonyericsson.android.camera.extra.launchTrigger", LaunchCondition$LaunchTrigger.LOCK_SCREEN.toString());
        context.startActivity(intent);
    }

    private void onCancelReceived(Context context) {
        ((CameraApplication) context.getApplicationContext()).getCameraDevice().closeCamera();
        releaseCameraDeviceReleaseTimer();
    }

    private static synchronized void startCameraDeviceReleaseTimer(Context context) {
        if (CamLog.DEBUG) {
            CamLog.d("Schedule camera release due to timeout.");
        }
        synchronized (sReleaseTimerLock) {
            if (sReleaseTimer == null) {
                sReleaseTimer = new Timer(true);
                sReleaseTimer.schedule(new CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask(context, null), 5000L);
            }
        }
    }

    public static synchronized void releaseCameraDeviceReleaseTimer() {
        if (CamLog.DEBUG) {
            CamLog.d("Cancel camera release due to timeout.");
        }
        synchronized (sReleaseTimerLock) {
            if (sReleaseTimer != null) {
                sReleaseTimer.cancel();
                sReleaseTimer.purge();
                sReleaseTimer = null;
            }
        }
    }
}
