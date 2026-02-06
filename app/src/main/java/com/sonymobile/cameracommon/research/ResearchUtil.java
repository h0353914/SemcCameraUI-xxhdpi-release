package com.sonymobile.cameracommon.research;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.sonyericsson.android.camera.LaunchCondition$LaunchTrigger;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonymobile.cameracommon.research.idd.IddUtil;
import com.sonymobile.cameracommon.research.parameters.Event$Action;
import com.sonymobile.cameracommon.research.parameters.Event$AutoPowerOffAction;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;
import com.sonymobile.cameracommon.research.parameters.Event$Category;
import com.sonymobile.cameracommon.research.parameters.Event$CoolMode;
import com.sonymobile.cameracommon.research.parameters.Event$ForceQuit;
import com.sonymobile.cameracommon.research.parameters.Event$Label;
import com.sonymobile.cameracommon.research.parameters.Event$LowBatteryMitigation;
import com.sonymobile.cameracommon.research.parameters.Event$PredictiveLaunchAction;
import com.sonymobile.cameracommon.research.parameters.Event$SelfTimerTrigger;
import com.sonymobile.cameracommon.research.parameters.Event$StopOperation;
import com.sonymobile.cameracommon.research.parameters.Event$ThermalMitigation;
import com.sonymobile.cameracommon.research.parameters.Event$UserOperation;
import com.sonymobile.cameracommon.research.parameters.Event$WizardPage;
import com.sonymobile.cameracommon.research.parameters.Event$WizardResult;
import com.sonymobile.cameracommon.research.parameters.Screen;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel$Parameter;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class ResearchUtil {
    private static final String DUAL_CAMERA_EFFECT_USAGE_DATA_CONTENT_URI = "content://com.sonymobile.addoncamera.dualcameraeffect.provider/UsageData";
    private static final String PORTRAIT_SELFIE_USAGE_DATA_CONTENT_URI = "content://com.sonymobile.addoncamera.beautyportrait.provider/UsageData";
    public static final String TAG = "ResearchUtil";
    private static final ResearchUtil sInstance = new ResearchUtil();
    private ExecutorService mBackWorker;
    private ResearchUtil$CurrentUserOperationHolder mUserOperationInfo = null;
    private ResearchUtil$PanoramaInfo mPanoramaInfo = null;
    private Context mContext = null;
    private boolean mIsViewEventSent = false;
    private boolean mIsFailedToOpenCamera = false;
    private int mCountRecordResume = 0;
    private int mCountRecordSnapshot = 0;
    private ResearchUtil$TemporarySettingValues mTemporarySettingValues = null;
    private ResearchUtil$AfDoneKeepingTimeHolder mAfDoneKeepingTimeHolder = null;

    static /* synthetic */ ResearchUtil$TemporarySettingValues access$000(ResearchUtil researchUtil) {
        return researchUtil.mTemporarySettingValues;
    }

    static /* synthetic */ ResearchUtil$TemporarySettingValues access$002(ResearchUtil researchUtil, ResearchUtil$TemporarySettingValues researchUtil$TemporarySettingValues) {
        researchUtil.mTemporarySettingValues = researchUtil$TemporarySettingValues;
        return researchUtil$TemporarySettingValues;
    }

    static /* synthetic */ boolean access$1300(ResearchUtil researchUtil) {
        return researchUtil.mIsViewEventSent;
    }

    static /* synthetic */ boolean access$1302(ResearchUtil researchUtil, boolean z) {
        researchUtil.mIsViewEventSent = z;
        return z;
    }

    static /* synthetic */ Context access$1700(ResearchUtil researchUtil) {
        return researchUtil.mContext;
    }

    static /* synthetic */ boolean access$2000(ResearchUtil researchUtil) {
        return researchUtil.mIsFailedToOpenCamera;
    }

    static /* synthetic */ boolean access$2002(ResearchUtil researchUtil, boolean z) {
        researchUtil.mIsFailedToOpenCamera = z;
        return z;
    }

    static /* synthetic */ int access$2700(ResearchUtil researchUtil) {
        return researchUtil.mCountRecordResume;
    }

    static /* synthetic */ int access$2702(ResearchUtil researchUtil, int i) {
        researchUtil.mCountRecordResume = i;
        return i;
    }

    static /* synthetic */ int access$2708(ResearchUtil researchUtil) {
        int i = researchUtil.mCountRecordResume;
        researchUtil.mCountRecordResume = i + 1;
        return i;
    }

    static /* synthetic */ int access$2800(ResearchUtil researchUtil) {
        return researchUtil.mCountRecordSnapshot;
    }

    static /* synthetic */ int access$2802(ResearchUtil researchUtil, int i) {
        researchUtil.mCountRecordSnapshot = i;
        return i;
    }

    static /* synthetic */ int access$2808(ResearchUtil researchUtil) {
        int i = researchUtil.mCountRecordSnapshot;
        researchUtil.mCountRecordSnapshot = i + 1;
        return i;
    }

    static /* synthetic */ String access$2900(String str) {
        return getVideoSizeEventLabel(str);
    }

    static /* synthetic */ ResearchUtil$AfDoneKeepingTimeHolder access$400(ResearchUtil researchUtil) {
        return researchUtil.mAfDoneKeepingTimeHolder;
    }

    static /* synthetic */ ResearchUtil$AfDoneKeepingTimeHolder access$402(ResearchUtil researchUtil, ResearchUtil$AfDoneKeepingTimeHolder researchUtil$AfDoneKeepingTimeHolder) {
        researchUtil.mAfDoneKeepingTimeHolder = researchUtil$AfDoneKeepingTimeHolder;
        return researchUtil$AfDoneKeepingTimeHolder;
    }

    static /* synthetic */ void access$500(ResearchUtil researchUtil, Event$Category event$Category, Map map, Map map2) {
        researchUtil.sendEventAllSettings(event$Category, map, map2);
    }

    static /* synthetic */ ResearchUtil$CurrentUserOperationHolder access$800(ResearchUtil researchUtil) {
        return researchUtil.mUserOperationInfo;
    }

    static /* synthetic */ ResearchUtil$CurrentUserOperationHolder access$802(ResearchUtil researchUtil, ResearchUtil$CurrentUserOperationHolder researchUtil$CurrentUserOperationHolder) {
        researchUtil.mUserOperationInfo = researchUtil$CurrentUserOperationHolder;
        return researchUtil$CurrentUserOperationHolder;
    }

    static /* synthetic */ ResearchUtil$PanoramaInfo access$900(ResearchUtil researchUtil) {
        return researchUtil.mPanoramaInfo;
    }

    static /* synthetic */ ResearchUtil$PanoramaInfo access$902(ResearchUtil researchUtil, ResearchUtil$PanoramaInfo researchUtil$PanoramaInfo) {
        researchUtil.mPanoramaInfo = researchUtil$PanoramaInfo;
        return researchUtil$PanoramaInfo;
    }

    private ResearchUtil() {
        this.mBackWorker = null;
        if (this.mBackWorker == null) {
            this.mBackWorker = ThreadUtil.buildExecutor("R-Thread", 1);
        }
    }

    public static ResearchUtil getInstance() {
        return sInstance;
    }

    public void onCreate(Context context) {
        if (CamLog.VERBOSE) {
            CamLog.d("onCreate()");
        }
        this.mContext = context;
        this.mBackWorker.execute(new ResearchUtil$OnCreateTask(null));
    }

    public void onResume(boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("onResume()");
        }
        this.mBackWorker.execute(new ResearchUtil$OnResumeTask(this, z, null));
    }

    public void onPause(boolean z) {
        this.mBackWorker.execute(new ResearchUtil$OnPauseTask(this, z, null));
        if (CamLog.VERBOSE) {
            CamLog.d("onPause()");
        }
    }

    public void onDestroy() {
        try {
            this.mBackWorker.submit(new ResearchUtil$OnDestroyTask(this.mContext, null)).get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            CamLog.e("OnDestroyTask has been interrupted.", e);
        } catch (ExecutionException e2) {
            CamLog.e("OnDestroyTask failed.", e2);
        } catch (TimeoutException e3) {
            CamLog.e("OnDestroyTask is Timeout.", e3);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("onDestroy()");
        }
    }

    public void sendView(LaunchCondition$LaunchTrigger launchCondition$LaunchTrigger, Screen screen) {
        this.mBackWorker.execute(new ResearchUtil$SendViewTask(this, launchCondition$LaunchTrigger, screen, null));
    }

    public void setLaunchBy(LaunchCondition$LaunchTrigger launchCondition$LaunchTrigger) {
        IddUtil.setLaunchedBy(launchCondition$LaunchTrigger.toString());
    }

    public void setView(Screen screen) {
        IddUtil.setView(screen);
    }

    public void sendThermalEvent(boolean z, boolean z2) {
        sendEvent(Event$Category.THERMAL_MITIGATION, Event$ThermalMitigation.getType(z), Event$ForceQuit.getType(z2));
    }

    public void sendCoolModeEvent(Event$CoolMode event$CoolMode, boolean z) {
        sendEvent(Event$Category.THERMAL_MITIGATION, event$CoolMode, Event$ForceQuit.getType(z));
    }

    public void sendLowBatteryEvent(boolean z, boolean z2) {
        sendEvent(Event$Category.LOWBATTERY_MITIGATION, Event$LowBatteryMitigation.getType(z), Event$ForceQuit.getType(z2));
    }

    public void sendSlowMotionEvent(String str, int i) {
        sendEvent(Event$Category.SLOW_MOTION, str, String.valueOf(i));
    }

    public void setCameraNotAvailableFailedToOpen() {
        this.mBackWorker.execute(new ResearchUtil$UpdateFailedToOpenCameraFlagTask(this, null));
    }

    public void sendCameraNotAvailableEvent() {
        this.mBackWorker.execute(new ResearchUtil$SendCameraNotAvailableEventTask(this, null));
    }

    public void sendSettingsCommon(UserSettingValue userSettingValue) {
        this.mBackWorker.execute(new ResearchUtil$SendSettingsCommonValueTask(this, userSettingValue, null));
    }

    public void sendSettingsCommon(String str) {
        this.mBackWorker.execute(new ResearchUtil$SendSettingsCommonKeyTask(this, str, null));
    }

    public void setViewerLaunched() {
        this.mBackWorker.execute(new ResearchUtil$SetViewerLaunchedTask(this, null));
    }

    public void sendRecordingEvent(Event$UserOperation event$UserOperation, Event$StopOperation event$StopOperation, int i, boolean z) {
        sendRecordingEvent(event$UserOperation, event$StopOperation, i, z, null);
    }

    public void sendRecordingEvent(Event$UserOperation event$UserOperation, Event$StopOperation event$StopOperation, int i, boolean z, Map<String, String> map) {
        this.mBackWorker.execute(new ResearchUtil$SendRecordingEventTask(this, event$UserOperation, event$StopOperation, i, z, map, null));
    }

    private static String getVideoSizeEventLabel(String str) {
        if (TextUtils.isEmpty(str) || str.equals("Other")) {
            return "_V0";
        }
        switch (ResearchUtil$1.$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize[ResearchUtil$VideoSize.getVideoSize(str).ordinal()]) {
        }
        return "_V0";
    }

    public void incrementCountRecordResume() {
        this.mBackWorker.execute(new ResearchUtil$IncrementCountRecordResumeTask(this, null));
    }

    public void incrementCountSnapshotInRecording() {
        this.mBackWorker.execute(new ResearchUtil$IncrementCountSnapshotInRecordingTask(this, null));
    }

    public void setUserOperation(Event$UserOperation event$UserOperation) {
        setUserOperation(event$UserOperation, null, null);
    }

    public void setUserOperation(Event$UserOperation event$UserOperation, List<ShootingLabel$Parameter> list, Map<String, String> map) {
        this.mBackWorker.execute(new ResearchUtil$SetUserOperationTask(this, event$UserOperation, list, map, null));
    }

    public void sendEvent(Event$Category event$Category, Event$Action event$Action, Event$Label event$Label) {
        sendEvent(event$Category, event$Action, event$Label, 0L);
    }

    public void sendEvent(Event$Category event$Category, Event$Action event$Action, Event$Label event$Label, long j) {
        sendEvent(event$Category, event$Action == null ? null : event$Action.toString(), event$Label != null ? event$Label.toString() : null, j);
    }

    public void sendEvent(Event$Category event$Category, String str, String str2) {
        sendEvent(event$Category, str, str2, 0L);
    }

    private void sendEvent(Event$Category event$Category, String str, String str2, long j) {
        this.mBackWorker.execute(new ResearchUtil$SendEventTask(event$Category, str, str2, j, null));
    }

    public void clearTemporarySettingValues() {
        this.mBackWorker.execute(new ResearchUtil$ClearTemporarySettingValuesTask(this, null));
    }

    public void setZoomRatio(float f) {
        this.mBackWorker.execute(new ResearchUtil$SetZoomRatioTask(this, f));
    }

    public void setOrientation(int i) {
        this.mBackWorker.execute(new ResearchUtil$SetOrientationTask(this, i));
    }

    public void setFaceNum(int i) {
        this.mBackWorker.execute(new ResearchUtil$SetFaceNumTask(this, i));
    }

    public void setRecordingMaxFaceNum(int i) {
        this.mBackWorker.execute(new ResearchUtil$SetRecordingMaxFaceNumTask(this, i));
    }

    public void clearFaceNum() {
        this.mBackWorker.execute(new ResearchUtil$ClearFaceNumTask(this, null));
    }

    public void setPredictiveCaptureNum(int i) {
        this.mBackWorker.execute(new ResearchUtil$SetPredictiveCaptureNumTask(this, i));
    }

    public void setManualBurstCount(int i) {
        this.mBackWorker.execute(new ResearchUtil$SetManualBurstCountTask(this, i));
    }

    public void setCaptureTrigger(Event$CaptureTrigger event$CaptureTrigger) {
        this.mBackWorker.execute(new ResearchUtil$SetCaptureTriggerTask(this, event$CaptureTrigger));
    }

    public void setSideSensePosition(int i, int i2) {
        this.mBackWorker.execute(new ResearchUtil$SetSideSensePositionTask(this, i, i2));
    }

    public void setRecordBySideSense(boolean z) {
        this.mBackWorker.execute(new ResearchUtil$SetRecordBySideSenseTask(this, z));
    }

    public void setContinuousCapture() {
        this.mBackWorker.execute(new ResearchUtil$SetContinuousCaptureTask(this, null));
    }

    public void setTimeAfDone() {
        setTime(true, System.currentTimeMillis());
    }

    public void setTimeCaptureStart() {
        setTime(false, System.currentTimeMillis());
    }

    private void setTime(boolean z, long j) {
        this.mBackWorker.execute(new ResearchUtil$SetTimeTask(this, z, j));
    }

    public void sendSelfTimerCancelledEvent(Event$SelfTimerTrigger event$SelfTimerTrigger) {
        sendEvent(Event$Category.SELFTIMER_CANCELLED, event$SelfTimerTrigger, (Event$Label) null);
    }

    public void sendPredictiveLaunchEvent(Event$PredictiveLaunchAction event$PredictiveLaunchAction) {
        sendEvent(Event$Category.PREDICTIVE_LAUNCH, event$PredictiveLaunchAction, (Event$Label) null);
    }

    public void sendAutoPowerOffEvent(Event$AutoPowerOffAction event$AutoPowerOffAction) {
        sendEvent(Event$Category.AUTO_POWEROFF, event$AutoPowerOffAction, (Event$Label) null);
    }

    public void sendPerformanceData(String str, long j, boolean z) {
        sendPerformanceData(str, j, z, null);
    }

    public void sendPerformanceData(String str, long j, boolean z, String str2) {
        this.mBackWorker.execute(new ResearchUtil$SendPerformanceDataTask(str, j, z, str2, null));
    }

    private void sendEventAllSettings(Event$Category event$Category, Map<String, String> map, Map<String, String> map2) {
        this.mBackWorker.execute(new ResearchUtil$SendEventAllSettingsTask(event$Category, map, map2, null));
    }

    public void sendEventChangedSetting(String str, String str2, String str3) {
        this.mBackWorker.execute(new ResearchUtil$SendEventChangedSettingTask(str, str2, str3, null));
    }

    public void sendEventInternalModeChange(String str, String str2, String str3) {
        this.mBackWorker.execute(new ResearchUtil$SendEventInternalModeChangeTask(str, str2, str3, null));
    }

    public void sendEventAddonModeChange(Event$Category event$Category, String str, String str2, String str3) {
        this.mBackWorker.execute(new ResearchUtil$SendEventAddonModeChangeTask(event$Category, str, str2, str3, null));
    }

    public void sendSetupWizardEvent(Event$WizardPage event$WizardPage, Event$WizardResult event$WizardResult, long j) {
        this.mBackWorker.execute(new ResearchUtil$sendWizardEventTask(event$WizardPage, event$WizardResult, j, null));
    }

    public void sendDualCameraEffectEvent(Context context) {
        this.mBackWorker.execute(new ResearchUtil$SendExternalCameraAppEventTask(context, Uri.parse("content://com.sonymobile.addoncamera.dualcameraeffect.provider/UsageData"), null, null));
    }

    public void sendPortraitSelfieEvent(Context context, String str) {
        this.mBackWorker.execute(new ResearchUtil$SendExternalCameraAppEventTask(context, Uri.parse("content://com.sonymobile.addoncamera.beautyportrait.provider/UsageData"), str, null));
    }

    public void setAssistSelfTimer(int i) {
        this.mBackWorker.execute(new ResearchUtil$setAssistSelfTimerTask(this, i));
    }
}
