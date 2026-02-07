package com.sonyericsson.android.camera.research;

import android.util.ArrayMap;
import com.sonyericsson.android.camera.LaunchCondition$LaunchTrigger;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FrontAngle;
import com.sonyericsson.android.camera.configuration.parameters.ObjectTracking;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.device.CameraParameterConverter$SceneMode;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;
import com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$Category;
import com.sonymobile.cameracommon.research.parameters.Event$StopOperation;
import com.sonymobile.cameracommon.research.parameters.Event$UserOperation;
import com.sonymobile.cameracommon.research.parameters.Event$WizardPage;
import com.sonymobile.cameracommon.research.parameters.Event$WizardResult;
import com.sonymobile.cameracommon.research.parameters.Screen;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
public class LocalResearchUtil {
    public static final String TAG = "LocalResearchUtil";
    private static final LocalResearchUtil sInstance = new LocalResearchUtil();
    private BatteryChangedReceiver mBatteryChangedReceiver;
    private String mModeChangeMethod;
    private final Map<UserSettingKey, LocalResearchUtil$BasisAndChange<UserSettingValue>> mSettingsPhoto = new ArrayMap();
    private final Map<UserSettingKey, LocalResearchUtil$BasisAndChange<UserSettingValue>> mSettingsVideo = new ArrayMap();
    private LocalResearchUtil$SemiAutoSettingValues mSemiAutoSettingValuesPhoto = null;
    private LocalResearchUtil$SemiAutoSettingValues mSemiAutoSettingValuesVideo = null;
    private LocalResearchUtil$GestureShutterValues mGestureShutterValues = null;
    private LocalResearchUtil$ObjectTrackingValues mObjectTrackingValues = null;
    private boolean mPredictiveLaunchState = false;
    private final Map<UserSettingKey, UserSettingValue> mAllSettingsPhoto = new ArrayMap();
    private final Map<UserSettingKey, UserSettingValue> mAllSettingsVideo = new ArrayMap();
    private String mRecognizedScene = CameraParameterConverter$SceneMode.AUTO.toString();
    private Map<LocalResearchUtil$MeasurementKey, LocalResearchUtil$PerformanceData> mPerformanceDataMap = new ArrayMap();
    private boolean mIsHeated = false;
    private long mWizardStartTime = 0;
    private TutorialController$TutorialType mTutorialType = null;
    private boolean mIsReadMore = false;
    private int mCurrentPageIndex = -1;

    static /* synthetic */ boolean access$400(LocalResearchUtil localResearchUtil) {
        return localResearchUtil.isHeated();
    }

    static /* synthetic */ String access$500(LocalResearchUtil localResearchUtil) {
        return localResearchUtil.getBatteryLevel();
    }

    private LocalResearchUtil() {
    }

    public static LocalResearchUtil getInstance() {
        return sInstance;
    }

    public void clearSettings() {
        this.mSettingsPhoto.clear();
        this.mSettingsVideo.clear();
    }

    public void clearAllSettings() {
        Map<UserSettingKey, UserSettingValue> commonSettings = getCommonSettings(this.mAllSettingsPhoto);
        this.mAllSettingsPhoto.clear();
        this.mAllSettingsVideo.clear();
        this.mAllSettingsPhoto.putAll(commonSettings);
        this.mAllSettingsVideo.putAll(commonSettings);
    }

    private Map<UserSettingKey, UserSettingValue> getCommonSettings(Map<UserSettingKey, UserSettingValue> map) {
        ArrayMap arrayMap = new ArrayMap();
        for (Map$Entry<UserSettingKey, UserSettingValue> map$Entry : map.entrySet()) {
            switch (LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[map$Entry.getKey().ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    arrayMap.put(map$Entry.getKey(), map.get(map$Entry.getKey()));
                    break;
            }
        }
        return arrayMap;
    }

    private Screen getScreen(CapturingMode capturingMode) {
        switch (LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            case 1:
                return Screen.SUPERIOR_AUTO_MAIN;
            case 2:
                return Screen.MANUAL_MAIN;
            case 3:
                return Screen.SUPERIOR_AUTO_FRONT;
            case 4:
                return Screen.MANUAL_FRONT;
            case 5:
                return Screen.VIDEO_MAIN;
            case 6:
                return Screen.VIDEO_FRONT;
            case 7:
                return Screen.SLOW_MOTION;
            default:
                if (CamLog.VERBOSE) {
                    CamLog.d("getScreen() : Not supported : " + capturingMode);
                }
                return null;
        }
    }

    public void sendView(LaunchCondition$LaunchTrigger launchCondition$LaunchTrigger, CapturingMode capturingMode) {
        ResearchUtil.getInstance().sendView(launchCondition$LaunchTrigger, getScreen(capturingMode));
    }

    public void setLaunchBy(LaunchCondition$LaunchTrigger launchCondition$LaunchTrigger) {
        ResearchUtil.getInstance().setLaunchBy(launchCondition$LaunchTrigger);
    }

    public void setView(CapturingMode capturingMode) {
        ResearchUtil.getInstance().setView(getScreen(capturingMode));
    }

    public void setSettingsValue(UserSettingValue userSettingValue, UserSettingValue userSettingValue2, CapturingMode capturingMode) {
        UserSettingKey key = userSettingValue2.getKey();
        if (userSettingValue == null) {
            userSettingValue = getCurrentSetting(key);
        }
        LocalResearchUtil$BasisAndChange<UserSettingValue> localResearchUtil$BasisAndChange = new LocalResearchUtil$BasisAndChange<>(userSettingValue, userSettingValue2);
        if (!localResearchUtil$BasisAndChange.hasChange()) {
            if (CamLog.VERBOSE) {
                CamLog.d("setSettingsValue() : Not changed.");
                return;
            }
            return;
        }
        switch (LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[key.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 39:
            case 40:
            case 41:
                break;
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
                setSettingsPhotoVideo(localResearchUtil$BasisAndChange, Event$Category.SETTINGS_PHOTO);
                break;
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
                setSettingsPhotoVideo(localResearchUtil$BasisAndChange, Event$Category.SETTINGS_VIDEO);
                break;
            case 36:
            case 37:
                switch (LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        setSettingsPhotoVideo(localResearchUtil$BasisAndChange, Event$Category.SETTINGS_PHOTO);
                        break;
                    case 5:
                    case 6:
                    case 7:
                        setSettingsPhotoVideo(localResearchUtil$BasisAndChange, Event$Category.SETTINGS_VIDEO);
                        break;
                }
                break;
            case 38:
                int i = LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()];
                if (i != 6) {
                    switch (i) {
                        case 3:
                        case 4:
                            setSettingsPhotoVideo(localResearchUtil$BasisAndChange, Event$Category.SETTINGS_PHOTO);
                    }
                } else {
                    setSettingsPhotoVideo(localResearchUtil$BasisAndChange, Event$Category.SETTINGS_VIDEO);
                }
                break;
            default:
                if (CamLog.VERBOSE) {
                    CamLog.d("setSettingsValue() : Not supported : " + key);
                    return;
                }
                return;
        }
        ResearchUtil.getInstance().sendEventChangedSetting(key.toString(), ((UserSettingValue) LocalResearchUtil$BasisAndChange.access$000(localResearchUtil$BasisAndChange)).toString(), ((UserSettingValue) LocalResearchUtil$BasisAndChange.access$100(localResearchUtil$BasisAndChange)).toString());
        setAllSettingsValue((UserSettingValue) LocalResearchUtil$BasisAndChange.access$100(localResearchUtil$BasisAndChange), capturingMode);
    }

    private Map<UserSettingKey, LocalResearchUtil$BasisAndChange<UserSettingValue>> getSettingsMap(Event$Category event$Category) {
        switch (LocalResearchUtil$1.$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category[event$Category.ordinal()]) {
            case 1:
                return this.mSettingsPhoto;
            case 2:
                return this.mSettingsVideo;
            default:
                return null;
        }
    }

    private void setSettingsPhotoVideo(LocalResearchUtil$BasisAndChange<UserSettingValue> localResearchUtil$BasisAndChange, Event$Category event$Category) {
        UserSettingKey key = ((UserSettingValue) LocalResearchUtil$BasisAndChange.access$100(localResearchUtil$BasisAndChange)).getKey();
        if (CamLog.VERBOSE) {
            CamLog.d("setSettingsPhotoVideo() : Category = " + event$Category + ", Key = " + key);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("newValues    : Basis = " + LocalResearchUtil$BasisAndChange.access$000(localResearchUtil$BasisAndChange) + ", Change = " + LocalResearchUtil$BasisAndChange.access$100(localResearchUtil$BasisAndChange));
        }
        Map<UserSettingKey, LocalResearchUtil$BasisAndChange<UserSettingValue>> settingsMap = getSettingsMap(event$Category);
        if (settingsMap == null) {
            return;
        }
        if (settingsMap.containsKey(key)) {
            LocalResearchUtil$BasisAndChange<UserSettingValue> localResearchUtil$BasisAndChange2 = settingsMap.get(key);
            if (((UserSettingValue) LocalResearchUtil$BasisAndChange.access$000(localResearchUtil$BasisAndChange2)).equals(LocalResearchUtil$BasisAndChange.access$100(localResearchUtil$BasisAndChange))) {
                settingsMap.remove(key);
                return;
            } else {
                LocalResearchUtil$BasisAndChange.access$102(localResearchUtil$BasisAndChange2, LocalResearchUtil$BasisAndChange.access$100(localResearchUtil$BasisAndChange));
                settingsMap.put(key, localResearchUtil$BasisAndChange2);
                return;
            }
        }
        settingsMap.put(key, localResearchUtil$BasisAndChange);
    }

    private void sendEventSettings(Event$Category event$Category) {
        Map<UserSettingKey, LocalResearchUtil$BasisAndChange<UserSettingValue>> settingsMap = getSettingsMap(event$Category);
        if (settingsMap == null || settingsMap.isEmpty()) {
            return;
        }
        for (Map$Entry<UserSettingKey, LocalResearchUtil$BasisAndChange<UserSettingValue>> map$Entry : settingsMap.entrySet()) {
            UserSettingKey key = map$Entry.getKey();
            LocalResearchUtil$BasisAndChange<UserSettingValue> value = map$Entry.getValue();
            if (LocalResearchUtil$BasisAndChange.access$100(value) != null) {
                ResearchUtil.getInstance().sendEvent(event$Category, key.toString(), ((UserSettingValue) LocalResearchUtil$BasisAndChange.access$100(value)).toString());
            }
        }
        settingsMap.clear();
    }

    public void sendEventSettings() {
        sendEventSettings(Event$Category.SETTINGS_PHOTO);
        sendEventSettings(Event$Category.SETTINGS_VIDEO);
    }

    public void sendEventInternalModeChange(CapturingMode capturingMode, CapturingMode capturingMode2) {
        ResearchUtil.getInstance().sendEventInternalModeChange(getModeName(capturingMode), getModeName(capturingMode2), this.mModeChangeMethod);
    }

    public void sendEventInternalModeChange(CapturingMode capturingMode, ModeSelectorInternalMode modeSelectorInternalMode) {
        ResearchUtil.getInstance().sendEventInternalModeChange(getModeName(capturingMode), getModeName(modeSelectorInternalMode), this.mModeChangeMethod);
    }

    public void sendEventAddonModeChange(Event$Category event$Category, String str, String str2) {
        ResearchUtil.getInstance().sendEventAddonModeChange(event$Category, str, str2, this.mModeChangeMethod);
    }

    public String getModeName(CapturingMode capturingMode) {
        switch (LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            case 1:
                return "SUPERIOR_AUTO_MAIN";
            case 2:
                return "MUNAUL_MAIN";
            case 3:
                return "SUPERIOR_AUTO_FRONT";
            case 4:
                return "MUNAUL_FRONT";
            case 5:
                return "VIDEO_MAIN";
            case 6:
                return "VIDEO_FRONT";
            case 7:
                return "SLOW_MOTION";
            default:
                return "";
        }
    }

    private String getModeName(ModeSelectorInternalMode modeSelectorInternalMode) {
        return LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode[modeSelectorInternalMode.ordinal()] != 1 ? "" : "PORTRAIT_SELFIE";
    }

    public void setModeChangeMethod(LocalResearchUtil$ModeChangeMethod localResearchUtil$ModeChangeMethod) {
        this.mModeChangeMethod = localResearchUtil$ModeChangeMethod.toString();
    }

    private LocalResearchUtil$SemiAutoSettingValues getSemiAutoSettingValues(Event$Category event$Category) {
        switch (LocalResearchUtil$1.$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category[event$Category.ordinal()]) {
            case 1:
            case 3:
                if (this.mSemiAutoSettingValuesPhoto == null) {
                    this.mSemiAutoSettingValuesPhoto = new LocalResearchUtil$SemiAutoSettingValues();
                }
                return this.mSemiAutoSettingValuesPhoto;
            case 2:
            case 4:
                if (this.mSemiAutoSettingValuesVideo == null) {
                    this.mSemiAutoSettingValuesVideo = new LocalResearchUtil$SemiAutoSettingValues();
                }
                return this.mSemiAutoSettingValuesVideo;
            default:
                return null;
        }
    }

    public void setSemiAutoSettingAmberBlueValue(int i) {
        getSemiAutoSettingValues(Event$Category.SETTINGS_PHOTO).updateAmberBlue(i);
        getSemiAutoSettingValues(Event$Category.SETTINGS_VIDEO).updateAmberBlue(i);
    }

    public void setSemiAutoSettingBrightnessValue(int i) {
        getSemiAutoSettingValues(Event$Category.SETTINGS_PHOTO).updateBrightness(i);
        getSemiAutoSettingValues(Event$Category.SETTINGS_VIDEO).updateBrightness(i);
    }

    public void clearSemiAutoSettingValues() {
        this.mSemiAutoSettingValuesPhoto = null;
        this.mSemiAutoSettingValuesVideo = null;
    }

    public void sendSemiAutoSettingValues(Event$Category event$Category) {
        LocalResearchUtil$SemiAutoSettingValues semiAutoSettingValues = getSemiAutoSettingValues(event$Category);
        if (semiAutoSettingValues.hasChange()) {
            semiAutoSettingValues.applyChange();
            ResearchUtil.getInstance().sendEvent(event$Category, UserSettingKey.SEMI_AUTO.toString(), semiAutoSettingValues.toString());
        }
    }

    private LocalResearchUtil$ObjectTrackingValues getObjectTrackingValues() {
        if (this.mObjectTrackingValues == null) {
            this.mObjectTrackingValues = new LocalResearchUtil$ObjectTrackingValues(null);
        }
        return this.mObjectTrackingValues;
    }

    public void setObjectTrackingTarget(boolean z) {
        getObjectTrackingValues().setObjectTrackingTarget(z);
    }

    private LocalResearchUtil$GestureShutterValues getGestureShutterValues() {
        if (this.mGestureShutterValues == null) {
            this.mGestureShutterValues = new LocalResearchUtil$GestureShutterValues(null);
        }
        return this.mGestureShutterValues;
    }

    public void setPredictiveLaunchState(boolean z) {
        this.mPredictiveLaunchState = z;
    }

    public void resetHandSignLostNum() {
        getGestureShutterValues().resetHandSignLostNum();
    }

    public void startHandSignLostNumCounting() {
        getGestureShutterValues().startHandSignLostNumCounting();
    }

    public void countUpHandSignLostNum() {
        getGestureShutterValues().countUpHandSignLostNum();
    }

    public void clearTemporarySettingValues() {
        clearSemiAutoSettingValues();
        clearRecognizedScene();
        ResearchUtil.getInstance().clearTemporarySettingValues();
    }

    public void setAllSettingsValue(UserSettingValue userSettingValue, CapturingMode capturingMode) {
        UserSettingKey key = userSettingValue.getKey();
        switch (LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[key.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 39:
            case 40:
            case 41:
                setAllSettingsPhotoVideo(userSettingValue, Event$Category.ALL_SETTINGS_PHOTO);
                setAllSettingsPhotoVideo(userSettingValue, Event$Category.ALL_SETTINGS_VIDEO);
                break;
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
                setAllSettingsPhotoVideo(userSettingValue, Event$Category.ALL_SETTINGS_PHOTO);
                break;
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
                setAllSettingsPhotoVideo(userSettingValue, Event$Category.ALL_SETTINGS_VIDEO);
                break;
            case 36:
            case 37:
                switch (LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        setAllSettingsPhotoVideo(userSettingValue, Event$Category.ALL_SETTINGS_PHOTO);
                        break;
                    case 5:
                    case 6:
                    case 7:
                        setAllSettingsPhotoVideo(userSettingValue, Event$Category.ALL_SETTINGS_VIDEO);
                        break;
                }
                break;
            case 38:
                int i = LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()];
                if (i != 6) {
                    switch (i) {
                        case 3:
                        case 4:
                            setAllSettingsPhotoVideo(userSettingValue, Event$Category.ALL_SETTINGS_PHOTO);
                    }
                } else {
                    setAllSettingsPhotoVideo(userSettingValue, Event$Category.ALL_SETTINGS_VIDEO);
                }
                break;
            default:
                if (CamLog.VERBOSE) {
                    CamLog.d("setAllSettingsValue() : Not supported : " + key);
                }
                break;
        }
    }

    private void setAllSettingsPhotoVideo(UserSettingValue userSettingValue, Event$Category event$Category) {
        UserSettingKey key = userSettingValue.getKey();
        Map<UserSettingKey, UserSettingValue> allSettingsMap = getAllSettingsMap(event$Category);
        if (allSettingsMap == null) {
            return;
        }
        allSettingsMap.put(key, userSettingValue);
    }

    private Map<UserSettingKey, UserSettingValue> getAllSettingsMap(Event$Category event$Category) {
        switch (LocalResearchUtil$1.$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category[event$Category.ordinal()]) {
            case 3:
                return this.mAllSettingsPhoto;
            case 4:
                return this.mAllSettingsVideo;
            default:
                return null;
        }
    }

    private UserSettingValue getCurrentSetting(UserSettingKey userSettingKey) {
        Map<UserSettingKey, UserSettingValue> allSettingsMap;
        Iterator it = Arrays.asList(Event$Category.ALL_SETTINGS_PHOTO, Event$Category.ALL_SETTINGS_VIDEO).iterator();
        UserSettingValue userSettingValue = null;
        while (it.hasNext() && ((allSettingsMap = getAllSettingsMap((Event$Category) it.next())) == null || (userSettingValue = allSettingsMap.get(userSettingKey)) == null)) {
        }
        return userSettingValue;
    }

    public void setRecognizedScene(String str) {
        this.mRecognizedScene = str;
    }

    public void clearRecognizedScene() {
        this.mRecognizedScene = CameraParameterConverter$SceneMode.AUTO.toString();
    }

    public void setUserOperation(Event$UserOperation event$UserOperation, CapturingMode capturingMode) {
        String string;
        ArrayList arrayList = new ArrayList();
        Event$Category event$Category = Event$Category.ALL_SETTINGS_PHOTO;
        arrayList.add(ShootingLabel.getRecognizedSceneParameter(this.mRecognizedScene));
        UserSettingValue userSettingValue = getAllSettingsMap(event$Category).get(UserSettingKey.FLASH);
        if (userSettingValue == null) {
            userSettingValue = Flash.OFF;
        }
        arrayList.add(ShootingLabel.getFlashParameter(userSettingValue.toString()));
        UserSettingValue userSettingValue2 = getAllSettingsMap(event$Category).get(UserSettingKey.SELF_TIMER);
        if (userSettingValue2 == null) {
            userSettingValue2 = SelfTimer.OFF;
        }
        arrayList.add(ShootingLabel.getSelfTimerParameter(userSettingValue2.toString()));
        if (capturingMode.isFront() && PlatformCapability.isSuperWideSupported(CameraInfo$CameraId.FRONT)) {
            UserSettingValue userSettingValue3 = getAllSettingsMap(event$Category).get(UserSettingKey.FRONT_ANGLE);
            if (userSettingValue3 == null) {
                userSettingValue3 = FrontAngle.DEFAULT;
            }
            string = userSettingValue3.toString();
        } else {
            string = "INVALID";
        }
        arrayList.add(ShootingLabel.getFrontAngleParameter(string));
        LocalResearchUtil$SemiAutoSettingValues semiAutoSettingValues = getSemiAutoSettingValues(event$Category);
        if (semiAutoSettingValues != null) {
            arrayList.add(ShootingLabel.getSemiAutoParameter(!semiAutoSettingValues.isEnabled() ? 1 : 0));
        }
        if (this.mGestureShutterValues != null) {
            arrayList.add(this.mGestureShutterValues.getParameter());
        }
        UserSettingValue userSettingValue4 = getAllSettingsMap(event$Category).get(UserSettingKey.OBJECT_TRACKING);
        if (userSettingValue4 == null) {
            userSettingValue4 = ObjectTracking.OFF;
        }
        arrayList.add(getObjectTrackingValues().getParameter(userSettingValue4.toString()));
        arrayList.add(ShootingLabel.getPredictiveLaunchParameter(this.mPredictiveLaunchState ? "True" : "False"));
        ResearchUtil.getInstance().setUserOperation(event$UserOperation, arrayList, getAllSettingsMapString(Event$Category.ALL_SETTINGS_PHOTO));
    }

    public Map<String, String> getAllSettingsMapString(Event$Category event$Category) {
        ArrayMap arrayMap = new ArrayMap();
        Map<UserSettingKey, UserSettingValue> allSettingsMap = getAllSettingsMap(event$Category);
        if (allSettingsMap != null) {
            for (Map$Entry<UserSettingKey, UserSettingValue> map$Entry : allSettingsMap.entrySet()) {
                arrayMap.put(map$Entry.getKey().toString(), map$Entry.getValue().toString());
            }
        }
        return arrayMap;
    }

    public void startMeasurement(LocalResearchUtil$MeasurementKey localResearchUtil$MeasurementKey) {
        getPerformanceData(localResearchUtil$MeasurementKey).start();
    }

    public void stopMeasurement(LocalResearchUtil$MeasurementKey localResearchUtil$MeasurementKey) {
        LocalResearchUtil$PerformanceData performanceData = getPerformanceData(localResearchUtil$MeasurementKey);
        if (LocalResearchUtil$PerformanceData.access$600(performanceData)) {
            performanceData.stop();
        }
        performanceData.clear();
    }

    public void setMeasurementValid(LocalResearchUtil$MeasurementKey localResearchUtil$MeasurementKey) {
        getPerformanceData(localResearchUtil$MeasurementKey).setValid();
    }

    public void setMeasurementInvalid(LocalResearchUtil$MeasurementKey localResearchUtil$MeasurementKey) {
        getPerformanceData(localResearchUtil$MeasurementKey).setInvalid();
    }

    public boolean isMeasurementValid(LocalResearchUtil$MeasurementKey localResearchUtil$MeasurementKey) {
        return LocalResearchUtil$PerformanceData.access$600(getPerformanceData(localResearchUtil$MeasurementKey));
    }

    public void setMeasurementThermal(boolean z) {
        this.mIsHeated = z;
    }

    private boolean isHeated() {
        return this.mIsHeated;
    }

    private LocalResearchUtil$PerformanceData getPerformanceData(LocalResearchUtil$MeasurementKey localResearchUtil$MeasurementKey) {
        LocalResearchUtil$PerformanceData localResearchUtil$PerformanceData = this.mPerformanceDataMap.get(localResearchUtil$MeasurementKey);
        if (localResearchUtil$PerformanceData != null) {
            return localResearchUtil$PerformanceData;
        }
        LocalResearchUtil$PerformanceData localResearchUtil$PerformanceData2 = new LocalResearchUtil$PerformanceData(this, localResearchUtil$MeasurementKey);
        this.mPerformanceDataMap.put(localResearchUtil$MeasurementKey, localResearchUtil$PerformanceData2);
        return localResearchUtil$PerformanceData2;
    }

    public void setBatteryChangedReceiver(BatteryChangedReceiver batteryChangedReceiver) {
        this.mBatteryChangedReceiver = batteryChangedReceiver;
    }

    private String getBatteryLevel() {
        return String.valueOf(this.mBatteryChangedReceiver != null ? this.mBatteryChangedReceiver.getBatteryLevel() : -1);
    }

    public void sendRecordingEvent(Event$UserOperation event$UserOperation, Event$StopOperation event$StopOperation, int i, boolean z) {
        ResearchUtil.getInstance().sendRecordingEvent(event$UserOperation, event$StopOperation, i, z, getAllSettingsMapString(Event$Category.ALL_SETTINGS_VIDEO));
    }

    public void setSettingsValue(UserSettings userSettings, CapturingMode capturingMode) {
        for (UserSettingKey userSettingKey : UserSettingKey.values()) {
            UserSettingValue userSettingValue = userSettings.get(userSettingKey);
            if (userSettingValue != null) {
                setAllSettingsValue(userSettingValue, capturingMode);
            }
        }
    }

    public void initSetupwizard(boolean z) {
        this.mIsReadMore = z;
    }

    public void startSetupWizard(TutorialController$TutorialType tutorialController$TutorialType, int i) {
        this.mWizardStartTime = System.currentTimeMillis();
        this.mCurrentPageIndex = i;
        this.mTutorialType = tutorialController$TutorialType;
    }

    public void closeSetupWizard() {
        this.mWizardStartTime = 0L;
        this.mCurrentPageIndex = -1;
        this.mTutorialType = null;
    }

    public void sendSetupWizardEvent(TutorialController$TutorialType tutorialController$TutorialType, int i, Event$WizardResult event$WizardResult) {
        Event$WizardPage event$WizardPage = Event$WizardPage.UNKNOWN;
        this.mCurrentPageIndex = i;
        this.mTutorialType = tutorialController$TutorialType;
        if (this.mTutorialType == null) {
            CamLog.w("TutorialType is null");
            return;
        }
        switch (LocalResearchUtil$1.$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[this.mTutorialType.ordinal()]) {
            case 1:
                event$WizardPage = Event$WizardPage.LOCATION_WIZARD;
                break;
            case 2:
                event$WizardPage = Event$WizardPage.PREDICTIVE_LAUNCH_WIZARD;
                break;
            case 3:
                event$WizardPage = Event$WizardPage.SIDE_SENSING_WIZARD;
                break;
            case 4:
                event$WizardPage = Event$WizardPage.SUPERIOR_AUTO_FUSION_WIZARD;
                break;
            case 5:
                event$WizardPage = Event$WizardPage.EYE_POSITION_WIZARD;
                break;
            case 6:
                event$WizardPage = Event$WizardPage.HAND_SHUTTER_WIZARD;
                break;
            case 7:
                switch (i) {
                    case 0:
                        event$WizardPage = Event$WizardPage.SUPER_SLOWMOTION_WIZARD1;
                        break;
                    case 1:
                        event$WizardPage = Event$WizardPage.SUPER_SLOWMOTION_WIZARD2;
                        break;
                    case 2:
                        event$WizardPage = Event$WizardPage.SUPER_SLOWMOTION_WIZARD3;
                        break;
                    case 3:
                        event$WizardPage = Event$WizardPage.SUPER_SLOWMOTION_WIZARD4;
                        break;
                }
                break;
            case 8:
                switch (i) {
                    case 0:
                        event$WizardPage = Event$WizardPage.READMORE_SUPER_SLOWMOTION_WIZARD1;
                        break;
                    case 1:
                        event$WizardPage = Event$WizardPage.READMORE_SUPER_SLOWMOTION_WIZARD2;
                        break;
                    case 2:
                        event$WizardPage = Event$WizardPage.READMORE_SUPER_SLOWMOTION_WIZARD3;
                        break;
                }
                break;
            case 9:
                event$WizardPage = this.mIsReadMore ? Event$WizardPage.READMORE_ONE_SHOT_WIZARD : Event$WizardPage.ONE_SHOT_WIZARD;
                break;
            case 10:
                switch (i) {
                    case 0:
                        event$WizardPage = this.mIsReadMore ? Event$WizardPage.READMORE_SLOWMOTION_WIZARD1 : Event$WizardPage.SLOWMOTION_WIZARD1;
                        break;
                    case 1:
                        event$WizardPage = this.mIsReadMore ? Event$WizardPage.READMORE_SLOWMOTION_WIZARD2 : Event$WizardPage.SLOWMOTION_WIZARD2;
                        break;
                }
                break;
            case 11:
                switch (i) {
                    case 0:
                        event$WizardPage = Event$WizardPage.MANUAL_FUSION_WIZARD1;
                        break;
                    case 1:
                        event$WizardPage = Event$WizardPage.MANUAL_FUSION_WIZARD2;
                        break;
                }
                break;
            case 12:
                switch (i) {
                    case 0:
                        event$WizardPage = Event$WizardPage.VIDEO_FUSION_WIZARD1;
                        break;
                    case 1:
                        event$WizardPage = Event$WizardPage.VIDEO_FUSION_WIZARD2;
                        break;
                }
                break;
        }
        if (this.mWizardStartTime > 0) {
            ResearchUtil.getInstance().sendSetupWizardEvent(event$WizardPage, event$WizardResult, System.currentTimeMillis() - this.mWizardStartTime);
            this.mWizardStartTime = System.currentTimeMillis();
        }
    }

    public void sendSetupWizardEvent(Event$WizardResult event$WizardResult) {
        sendSetupWizardEvent(this.mTutorialType, this.mCurrentPageIndex, event$WizardResult);
    }
}
