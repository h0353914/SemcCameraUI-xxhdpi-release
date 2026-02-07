package com.sonyericsson.android.camera.view.setting;

import android.content.Context;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.UserSettingSelectability;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FocusRange;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
import com.sonyericsson.android.camera.configuration.parameters.SideSense;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.configuration.parameters.VideoCodec;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.controller.StateMachine;
import com.sonyericsson.android.camera.controller.launcher.ApplicationLauncher$MonochromeType;
import com.sonyericsson.android.camera.device.CameraDeviceHandler;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.SettingUtil;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinderImpl;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.android.camera.view.modeselector.ModeLoader;
import com.sonyericsson.android.camera.view.selectabledialog.ModeSelector$OnModeSelectListener;
import com.sonyericsson.android.camera.view.selectabledialog.SettingMenu;
import com.sonyericsson.android.camera.view.setting.dialog.SettingAdapter;
import com.sonyericsson.android.camera.view.setting.dialog.SettingDialogFactory;
import com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.android.camera.view.setting.executor.SettingChangeExecutor;
import com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem$Selectability;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItemBuilder;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.storage.Storage;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SettingUi {
    public static final String TAG = "SettingUi";
    private final CameraActivity mActivity;
    private final CameraDeviceHandler mCameraDevice;
    private final SettingDialogItemFactory mDialogItemFactory;
    private boolean mIsDeviceInSecurityLock;
    private final UserSettings mSetting;
    private final SettingDialogStack mSettingDialogStack;
    private final Map<SettingAdapter, UserSettingKey[]> mSettingMenuAdapter = new HashMap();
    private final ContextualSettingList mSettingMenuList;
    private final StateMachine mStateMachine;
    private final ViewFinderImpl mViewFinder;

    static /* synthetic */ void access$100(SettingUi settingUi) {
        settingUi.clearSettingMenuAdapter();
    }

    static /* synthetic */ StateMachine access$1000(SettingUi settingUi) {
        return settingUi.mStateMachine;
    }

    static /* synthetic */ boolean access$1100(SettingUi settingUi) {
        return settingUi.mIsDeviceInSecurityLock;
    }

    static /* synthetic */ SettingAdapter access$1200(SettingUi settingUi, UserSettingKey userSettingKey, Storage storage) {
        return settingUi.generateParameterItemAdapter(userSettingKey, storage);
    }

    static /* synthetic */ void access$1300(SettingUi settingUi, SettingAdapter settingAdapter, Object obj) {
        settingUi.openSecondLayerDialog(settingAdapter, obj);
    }

    static /* synthetic */ UserSettings access$200(SettingUi settingUi) {
        return settingUi.mSetting;
    }

    static /* synthetic */ CameraActivity access$300(SettingUi settingUi) {
        return settingUi.mActivity;
    }

    static /* synthetic */ ViewFinderImpl access$400(SettingUi settingUi) {
        return settingUi.mViewFinder;
    }

    static /* synthetic */ void access$500(SettingUi settingUi) {
        settingUi.setVideoStabilizerByVideoHdrChanged();
    }

    static /* synthetic */ SettingDialogStack access$600(SettingUi settingUi) {
        return settingUi.mSettingDialogStack;
    }

    static /* synthetic */ CameraDeviceHandler access$700(SettingUi settingUi) {
        return settingUi.mCameraDevice;
    }

    static /* synthetic */ void access$800(SettingUi settingUi, TouchCapture touchCapture) {
        settingUi.updateTouchCapture(touchCapture);
    }

    public SettingUi(CameraActivity cameraActivity, SettingDialogStack settingDialogStack, StateMachine stateMachine, ViewFinderImpl viewFinderImpl, CameraDeviceHandler cameraDeviceHandler, boolean z) {
        this.mActivity = cameraActivity;
        this.mSettingMenuList = new ContextualSettingList(this.mActivity.getResources().getBoolean(2131034117));
        this.mSettingDialogStack = settingDialogStack;
        this.mSettingDialogStack.setContextualMenuListener(new SettingUi$SettingDialogListenerImpl(this, null));
        this.mStateMachine = stateMachine;
        this.mViewFinder = viewFinderImpl;
        this.mCameraDevice = cameraDeviceHandler;
        this.mIsDeviceInSecurityLock = z;
        this.mDialogItemFactory = new SettingDialogItemFactory();
        this.mSetting = this.mStateMachine.getUserSetting();
    }

    public void setDeviceInSecurityLock(boolean z) {
        this.mIsDeviceInSecurityLock = z;
    }

    private void updateTouchCapture(TouchCapture touchCapture) {
        this.mViewFinder.updateTouchCapture(touchCapture);
        this.mSetting.set(touchCapture);
        this.mViewFinder.commit();
    }

    public void openSettingMenuDialog() {
        openSettingMenuDialog(false, false);
    }

    public void openUserSelectMenu(UserSettingKey userSettingKey) {
        SettingMenu settingMenuOpenSettingMenuDialog = openSettingMenuDialog(true, true);
        if (userSettingKey != null) {
            settingMenuOpenSettingMenuDialog.select(userSettingKey);
        }
    }

    private void clearSettingMenuAdapter() {
        if (this.mSettingMenuAdapter.size() > 0) {
            this.mSettingMenuAdapter.clear();
        }
    }

    private SettingMenu openSettingMenuDialog(boolean z, boolean z2) {
        CapturingMode currentCapturingMode = this.mStateMachine.getCurrentCapturingMode();
        ContextualSettingList$Group contextualSettingList$Group = this.mSettingMenuList.get(currentCapturingMode, this.mActivity.isOneShot());
        CameraActivity cameraActivity = this.mActivity;
        updateSaveDestinationSelectability(this.mActivity.hasExtraOutputPath());
        SettingMenu settingMenuCreateSettingMenuDialog = SettingDialogFactory.createSettingMenuDialog(cameraActivity, this.mSettingDialogStack.getBackgroundWidth(), this.mSettingDialogStack.getBackgroundHeight(), z2);
        SettingAdapter settingAdapterGenerateSettingMenuItemAdapter = generateSettingMenuItemAdapter(cameraActivity, contextualSettingList$Group.priorityHigh.keys);
        settingMenuCreateSettingMenuDialog.addPanel(getString(contextualSettingList$Group.priorityHigh.titleResource), settingAdapterGenerateSettingMenuItemAdapter);
        this.mSettingMenuAdapter.put(settingAdapterGenerateSettingMenuItemAdapter, contextualSettingList$Group.priorityHigh.keys);
        if (contextualSettingList$Group.common.keys.length > 0) {
            SettingAdapter settingAdapterGenerateSettingMenuItemAdapter2 = generateSettingMenuItemAdapter(cameraActivity, contextualSettingList$Group.common.keys);
            settingMenuCreateSettingMenuDialog.addPanel(getString(contextualSettingList$Group.common.titleResource), settingAdapterGenerateSettingMenuItemAdapter2);
            this.mSettingMenuAdapter.put(settingAdapterGenerateSettingMenuItemAdapter2, contextualSettingList$Group.common.keys);
        }
        if (!this.mSettingDialogStack.openMenuDialog(settingMenuCreateSettingMenuDialog, currentCapturingMode, z)) {
            this.mSettingDialogStack.closeAllSettingDialogs(true);
        }
        return settingMenuCreateSettingMenuDialog;
    }

    public void openModeSelectDialog(ModeLoader modeLoader, ModeSelector$OnModeSelectListener modeSelector$OnModeSelectListener) {
        if (this.mSettingDialogStack.openModeSelectorDialog(modeLoader, modeSelector$OnModeSelectListener)) {
            return;
        }
        this.mSettingDialogStack.closeCurrentDialog();
    }

    public void openMonochromeDialog(boolean z, int i, Mode mode) {
        this.mSettingDialogStack.openMonochromeDialog(generateMonochromeAdpter(z, mode), i);
    }

    private SettingAdapter generateMonochromeAdpter(boolean z, Mode mode) {
        SettingAdapter settingAdapter = new SettingAdapter(this.mActivity, this.mDialogItemFactory, this.mIsDeviceInSecurityLock);
        ArrayList arrayList = new ArrayList();
        arrayList.add(SettingItemBuilder.build(ApplicationLauncher$MonochromeType.MONOCHROME_PHOTO).iconId(2131231216).textId(2131689950).dialogItemType(2).executor(new SettingUi$MonochromeExecutor(this, z, mode, null)).selected(false).selectability(SettingItem$Selectability.SELECTABLE).commit());
        arrayList.add(SettingItemBuilder.build(ApplicationLauncher$MonochromeType.MONOCHROME_VIDEO).iconId(2131231217).textId(2131689952).dialogItemType(2).executor(new SettingUi$MonochromeExecutor(this, z, mode, null)).selected(false).selectability(SettingItem$Selectability.SELECTABLE).commit());
        settingAdapter.addAll(arrayList);
        return settingAdapter;
    }

    private void openSecondLayerDialog(SettingAdapter settingAdapter, Object obj) {
        this.mSettingDialogStack.openSecondLayerDialog(settingAdapter, obj);
    }

    public void openShortcutSettingDialog(UserSettingKey userSettingKey) {
        SettingAdapter settingAdapter = new SettingAdapter(this.mActivity, this.mDialogItemFactory, this.mIsDeviceInSecurityLock);
        Iterator<SettingItem> it = generateChildrenSettingItem(userSettingKey, this.mActivity.getStorage()).iterator();
        while (it.hasNext()) {
            settingAdapter.add(it.next());
        }
        SettingMenu settingMenuCreateShortcutDialog = SettingDialogFactory.createShortcutDialog(this.mActivity, userSettingKey, this.mSettingDialogStack.getBackgroundWidth(), this.mSettingDialogStack.getBackgroundHeight());
        if (settingMenuCreateShortcutDialog != null) {
            settingMenuCreateShortcutDialog.addPanel(this.mActivity.getResources().getString(userSettingKey.getTitleTextId()), settingAdapter);
            if (this.mSettingDialogStack.openShortcutDialog(settingMenuCreateShortcutDialog, userSettingKey)) {
                return;
            }
            this.mSettingDialogStack.closeCurrentDialog();
        }
    }

    public void setSensorOrientation(int i) {
        this.mSettingDialogStack.setUiOrientation(i);
    }

    public void updateSettingMenu(boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("updateSettingMenu() is called");
        }
        for (SettingAdapter settingAdapter : this.mSettingMenuAdapter.keySet()) {
            settingAdapter.clear();
            for (UserSettingKey userSettingKey : this.mSettingMenuAdapter.get(settingAdapter)) {
                if (isVisible(this.mActivity, userSettingKey)) {
                    settingAdapter.add(generateParameterKeyItem(userSettingKey, this.mActivity.getStorage()));
                }
                if (z) {
                    settingAdapter.notifyDataSetInvalidated();
                } else {
                    settingAdapter.notifyDataSetChanged();
                }
            }
        }
    }

    public boolean closeDialogs() {
        if (!this.mSettingDialogStack.isDialogOpened()) {
            return false;
        }
        this.mSettingDialogStack.closeAllSettingDialogs(true);
        return true;
    }

    private String getString(int i) {
        return this.mActivity.getResources().getString(i);
    }

    private SettingAdapter generateSettingMenuItemAdapter(Context context, UserSettingKey[] userSettingKeyArr) {
        SettingAdapter settingAdapter = new SettingAdapter(this.mActivity, this.mDialogItemFactory, this.mIsDeviceInSecurityLock);
        for (UserSettingKey userSettingKey : userSettingKeyArr) {
            if (isVisible(context, userSettingKey)) {
                settingAdapter.add(generateParameterKeyItem(userSettingKey, this.mActivity.getStorage()));
            }
        }
        return settingAdapter;
    }

    private SettingItem generateParameterKeyItem(UserSettingKey userSettingKey, Storage storage) {
        List<SettingItem> listGenerateChildrenSettingItem = generateChildrenSettingItem(userSettingKey, storage);
        SettingItem selectedSettingItem = getSelectedSettingItem(listGenerateChildrenSettingItem);
        String text = selectedSettingItem != null ? selectedSettingItem.getText(this.mActivity.getResources()) : "";
        boolean zIsSelectableKey = isSelectableKey(userSettingKey);
        DialogId restrictMessageDialogId = userSettingKey.getRestrictMessageDialogId(this.mSetting);
        SettingItem$Selectability settingItem$Selectability = SettingItem$Selectability.SELECTABLE;
        if (!zIsSelectableKey) {
            if (restrictMessageDialogId == DialogId.DLG_INVALID) {
                settingItem$Selectability = SettingItem$Selectability.UNSELECTABLE;
            } else {
                settingItem$Selectability = SettingItem$Selectability.RESTRICTED;
            }
        }
        SettingItemBuilder settingItemBuilderExecutor = SettingItemBuilder.build(userSettingKey).textId(userSettingKey.getTitleTextId()).additionalTextForAccessibility(text).dialogItemType(getDialogItemType(userSettingKey)).selectability(settingItem$Selectability).executor(generateSettingItemExecutor(userSettingKey, settingItem$Selectability, storage));
        if (!userSettingKey.equals(UserSettingKey.HELP_GUIDE) && !userSettingKey.equals(UserSettingKey.RESET_SETTINGS)) {
            Iterator<SettingItem> it = listGenerateChildrenSettingItem.iterator();
            while (it.hasNext()) {
                settingItemBuilderExecutor.item(it.next());
            }
        }
        return settingItemBuilderExecutor.commit();
    }

    private SettingExecutorInterface<UserSettingKey> generateSettingItemExecutor(UserSettingKey userSettingKey, SettingItem$Selectability settingItem$Selectability, Storage storage) {
        CameraActivity cameraActivity = this.mActivity;
        switch (SettingUi$3.$SwitchMap$com$sonyericsson$android$camera$view$setting$settingitem$SettingItem$Selectability[settingItem$Selectability.ordinal()]) {
            case 1:
                return new SettingUi$1(this, userSettingKey, cameraActivity, storage);
            case 2:
                return new SettingUi$2(this, userSettingKey);
            default:
                return null;
        }
    }

    private boolean isSelectableKey(UserSettingKey userSettingKey) {
        boolean zIsSelectable = userSettingKey.isSelectable();
        int i = SettingUi$3.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()];
        if (i == 3) {
            CapturingMode capturingMode = (CapturingMode) this.mSetting.get(UserSettingKey.CAPTURING_MODE);
            if (capturingMode == CapturingMode.SLOW_MOTION && (((SlowMotion) this.mSetting.get(UserSettingKey.SLOW_MOTION)) == SlowMotion.STANDARD_SLOW_MOTION || !PlatformCapability.isSuperSlowFullHdSupported(capturingMode.getCameraId()))) {
                return false;
            }
        } else if (i == 11 && ((VideoHdr) this.mSetting.get(UserSettingKey.VIDEO_HDR)) == VideoHdr.HDR_ON) {
            return false;
        }
        return zIsSelectable;
    }

    private boolean isVisible(Context context, UserSettingKey userSettingKey) {
        CapturingMode capturingMode = (CapturingMode) this.mSetting.get(UserSettingKey.CAPTURING_MODE);
        switch (SettingUi$3.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()]) {
            case 2:
                return false;
            case 3:
                if (this.mActivity.isOneShotVideo() && this.mSetting.get(userSettingKey) == VideoSize.MMS) {
                    return false;
                }
                break;
            case 4:
            case 6:
            case 8:
            case 10:
            case 11:
            default:
                if (userSettingKey.isCommon()) {
                    return true;
                }
                break;
            case 5:
                return PlatformCapability.isSideTouchSupported();
            case 7:
                return !PlatformCapability.isForceSound(this.mStateMachine.getCurrentCameraId());
            case 9:
                if (userSettingKey.getSelectability() == UserSettingSelectability.FIXED) {
                    return false;
                }
                return !CommonUtility.shouldStorageForceInternal(context);
            case 12:
                return PlatformCapability.isLiftTriggerSupported();
            case 13:
                return PlatformCapability.isManualBurstSupported(CameraInfo$CameraId.BACK) || PlatformCapability.isManualBurstSupported(CameraInfo$CameraId.FRONT);
            case 14:
                return !capturingMode.isVideo() && PlatformCapability.isDistortionCorrectionSupported(capturingMode.getCameraId());
            case 15:
                return PlatformCapability.isHighSensitivityFusionSupported(capturingMode.getCameraId());
        }
        if (this.mSetting.getOptions(userSettingKey).length <= 1) {
            return false;
        }
        UserSettingSelectability selectability = userSettingKey.getSelectability();
        return selectability == UserSettingSelectability.SELECTABLE || selectability == UserSettingSelectability.UNAVAILABLE;
    }

    private SettingItem getSelectedSettingItem(List<SettingItem> list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("The specified list is empty.");
        }
        for (SettingItem settingItem : list) {
            if (settingItem.isSelected() && settingItem.isSelectable()) {
                return settingItem;
            }
        }
        if (!CamLog.VERBOSE) {
            return null;
        }
        CamLog.e("The specified list doesn't have a selected item.");
        return null;
    }

    private SettingAdapter generateParameterItemAdapter(UserSettingKey userSettingKey, Storage storage) {
        SettingAdapter settingAdapter = new SettingAdapter(this.mActivity, this.mDialogItemFactory, this.mIsDeviceInSecurityLock);
        settingAdapter.addAll(generateChildrenSettingItem(userSettingKey, storage));
        return settingAdapter;
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0214  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List<SettingItem> generateChildrenSettingItem(UserSettingKey userSettingKey, Storage storage) {
        UserSettingValue[] userSettingValueArr;
        ArrayList arrayList = new ArrayList();
        UserSettingValue userSettingValue = this.mSetting.get(userSettingKey);
        boolean z = true;
        if (this.mStateMachine.getCurrentCapturingMode() == CapturingMode.SLOW_MOTION && userSettingKey == UserSettingKey.VIDEO_SIZE) {
            SlowMotion slowMotion = (SlowMotion) this.mSetting.get(UserSettingKey.SLOW_MOTION);
            boolean zIsSuperSlowFullHdSupported = PlatformCapability.isSuperSlowFullHdSupported(this.mStateMachine.getCurrentCameraId());
            if (slowMotion != SlowMotion.STANDARD_SLOW_MOTION && zIsSuperSlowFullHdSupported) {
                VideoSize videoSize = VideoSize.FULL_HD;
                String string = getString(2131690233);
                arrayList.add(SettingItemBuilder.build(videoSize).iconId(videoSize.getIconId()).textId(2131690234).dialogItemType(getDialogItemTypeForSecondLayer(userSettingKey)).executor(createSettingChangeExecutor(userSettingKey)).selected(userSettingValue == videoSize).subText(string).additionalTextForAccessibility(string).selectability(SettingItem$Selectability.SELECTABLE).commit());
            }
            VideoSize videoSize2 = VideoSize.HD;
            String string2 = getString(2131690237);
            arrayList.add(SettingItemBuilder.build(videoSize2).iconId(videoSize2.getIconId()).textId(videoSize2.getTextId()).dialogItemType(getDialogItemTypeForSecondLayer(userSettingKey)).executor(createSettingChangeExecutor(userSettingKey)).selected(userSettingValue == videoSize2 || slowMotion == SlowMotion.STANDARD_SLOW_MOTION).subText(string2).additionalTextForAccessibility(string2).selectability(SettingItem$Selectability.SELECTABLE).commit());
            return arrayList;
        }
        UserSettingValue[] options = getOptions(userSettingKey);
        if (userSettingKey == UserSettingKey.GEO_TAG && !GeotagManager.isGeoTagEnabled((Geotag) userSettingValue, this.mActivity)) {
            userSettingValue = Geotag.OFF;
        }
        if (userSettingKey == UserSettingKey.SIDE_SENSE && !SettingUtil.isSideSenseEnabled(true)) {
            userSettingValue = SideSense.OFF;
        }
        VideoSize videoSize3 = (VideoSize) this.mSetting.get(UserSettingKey.VIDEO_SIZE);
        VideoCodec videoCodec = (VideoCodec) this.mSetting.get(UserSettingKey.VIDEO_CODEC);
        CapturingMode capturingMode = (CapturingMode) this.mSetting.get(UserSettingKey.CAPTURING_MODE);
        VideoHdr videoHdr = (VideoHdr) this.mSetting.get(UserSettingKey.VIDEO_HDR);
        int length = options.length;
        int i = 0;
        while (i < length) {
            UserSettingValue userSettingValue2 = options[i];
            if (userSettingValue2 == null) {
                userSettingValueArr = options;
            } else {
                boolean z2 = userSettingValue == userSettingValue2 ? z : false;
                boolean zIsVideoSelectableValues = isVideoSelectableValues(userSettingValue2, capturingMode, videoSize3, videoHdr);
                SettingItem$Selectability settingItem$Selectability = SettingItem$Selectability.SELECTABLE;
                if ((userSettingValue2 != VideoSize.FOUR_K_UHD_H264 || videoCodec != VideoCodec.H265) && (userSettingValue2 != VideoSize.FOUR_K_UHD_H265 || videoCodec != VideoCodec.H264)) {
                    if (userSettingKey == UserSettingKey.DESTINATION_TO_SAVE) {
                        DestinationToSave destinationToSave = (DestinationToSave) userSettingValue2;
                        boolean zContains = storage.getAvailableStorage().contains(destinationToSave.getType());
                        if (zContains) {
                            userSettingValueArr = options;
                        } else {
                            userSettingValueArr = options;
                            if ((destinationToSave.getType() == Storage$StorageType.INTERNAL && ((DestinationToSave) userSettingValue).getType() == Storage$StorageType.INTERNAL && !storage.getAvailableStorage().contains(Storage$StorageType.EXTERNAL_CARD)) || ((destinationToSave.getType() == Storage$StorageType.EXTERNAL_CARD && ((DestinationToSave) userSettingValue).getType() == Storage$StorageType.EXTERNAL_CARD && !storage.getAvailableStorage().contains(Storage$StorageType.INTERNAL)) || (destinationToSave.getType() == Storage$StorageType.EXTERNAL_CARD && Storage$StorageState.UNGRANTED == this.mActivity.getStorage().getCurrentState(Storage$StorageType.EXTERNAL_CARD)))) {
                                zIsVideoSelectableValues = true;
                            }
                        }
                        zIsVideoSelectableValues = zContains;
                    } else {
                        userSettingValueArr = options;
                    }
                    if (!zIsVideoSelectableValues) {
                        settingItem$Selectability = SettingItem$Selectability.UNSELECTABLE;
                    }
                    SettingItemBuilder settingItemBuilderSelectability = SettingItemBuilder.build(userSettingValue2).iconId(userSettingValue2.getIconId()).textId(userSettingValue2.getTextId()).dialogItemType(getDialogItemTypeForSecondLayer(userSettingKey)).executor(createSettingChangeExecutor(userSettingKey)).selected(z2).selectability(settingItem$Selectability);
                    if (SettingUi$3.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()] == 4) {
                        SlowMotion slowMotion2 = (SlowMotion) userSettingValue2;
                        settingItemBuilderSelectability.subText(slowMotion2.getDescriptionText(this.mActivity));
                        settingItemBuilderSelectability.additionalTextForAccessibility(slowMotion2.getDescriptionText(this.mActivity));
                    }
                    arrayList.add(settingItemBuilderSelectability.commit());
                }
            }
            i++;
            options = userSettingValueArr;
            z = true;
        }
        return arrayList;
    }

    public static boolean isSelectableValues(UserSettingKey userSettingKey, Parameters parameters, UserSettingValue userSettingValue) {
        return userSettingKey.isSelectable() && (SettingUi$3.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()] != 16 ? true : isVideoSelectableValues(userSettingValue, parameters.capturingMode, parameters.getVideoSize(), parameters.getVideoHdr()));
    }

    private static boolean isVideoSelectableValues(UserSettingValue userSettingValue, CapturingMode capturingMode, VideoSize videoSize, VideoHdr videoHdr) {
        if (videoSize.is4KVideo() && userSettingValue == VideoCodec.H265 && videoHdr != VideoHdr.HDR_ON) {
            return true;
        }
        UserSettingKey key = userSettingValue.getKey();
        if (UserSettingKey.VIDEO_STABILIZER == key && key.isSelectable()) {
            return ((VideoStabilizer) userSettingValue).isValueEnabled(capturingMode.getCameraId(), videoSize, videoHdr);
        }
        return key.isSelectable();
    }

    public static UserSettingValue getImageQualityControlDefaultValue(UserSettingKey userSettingKey) {
        switch (SettingUi$3.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()]) {
            case 17:
                return WhiteBalance.AUTO;
            case 18:
                return Iso.ISO_AUTO;
            case 19:
                return Ev.ZERO;
            case 20:
                return ShutterSpeed.AUTO;
            case 21:
                return FocusRange.AF;
            default:
                throw new IllegalArgumentException("Undefined default value for " + userSettingKey);
        }
    }

    public static int getImageQualityControlTabDescription(UserSettingKey userSettingKey) {
        switch (SettingUi$3.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()]) {
            case 17:
                return 2131689589;
            case 18:
                return 2131689584;
            case 19:
                return 2131689577;
            case 20:
                return 2131689588;
            case 21:
                return 2131689583;
            default:
                throw new IllegalArgumentException("Undefined description for " + userSettingKey);
        }
    }

    private int getDialogItemType(UserSettingKey userSettingKey) {
        switch (SettingUi$3.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()]) {
            case 16:
                if (getOptions(userSettingKey).length > 2) {
                }
                break;
        }
        return 3;
    }

    private int getDialogItemTypeForSecondLayer(UserSettingKey userSettingKey) {
        int i = SettingUi$3.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()];
        if (i != 1 && i != 9 && i != 12) {
            if (i == 16) {
                return getOptions(userSettingKey).length > 2 ? 2 : 4;
            }
            switch (i) {
                case 3:
                    return this.mStateMachine.getCurrentCapturingMode() != CapturingMode.SLOW_MOTION ? 2 : 5;
                case 4:
                    return 5;
                default:
                    switch (i) {
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            return 4;
                        case 26:
                        case 27:
                        case 28:
                            return 1;
                        default:
                            switch (i) {
                                case 31:
                                case 32:
                                case 33:
                                    break;
                                default:
                                    return 2;
                            }
                            break;
                    }
                    break;
            }
        }
        return 2;
    }

    private SettingExecutorInterface<UserSettingValue> createSettingChangeExecutor(UserSettingKey userSettingKey) {
        SettingUi$ParameterChanger settingUi$ParameterChanger = new SettingUi$ParameterChanger(this, null);
        int i = SettingUi$3.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()];
        if (i != 13 && i != 23 && i != 25) {
            switch (i) {
                case 4:
                    return new SettingUi$SlowMotionExecutor(this, new SettingChangeExecutor(settingUi$ParameterChanger), null);
                case 5:
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    switch (i) {
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                            break;
                        default:
                            return new SettingUi$CloseExecutor(this, new SettingChangeExecutor(settingUi$ParameterChanger), null);
                    }
                    break;
            }
        }
        return new SettingChangeExecutor(settingUi$ParameterChanger);
    }

    private UserSettingValue[] getOptions(UserSettingKey userSettingKey) {
        return this.mSetting.getOptions(userSettingKey);
    }

    private void updateSaveDestinationSelectability(boolean z) {
        if (z) {
            UserSettingKey.DESTINATION_TO_SAVE.setSelectability(UserSettingSelectability.FIXED);
        } else {
            UserSettingKey.DESTINATION_TO_SAVE.setSelectability(UserSettingSelectability.SELECTABLE);
        }
    }

    private void setVideoStabilizerByVideoHdrChanged() {
        VideoStabilizer videoStabilizer;
        VideoStabilizer videoStabilizer2 = (VideoStabilizer) this.mSetting.get(UserSettingKey.VIDEO_STABILIZER);
        CameraInfo$CameraId cameraId = ((CapturingMode) this.mSetting.get(UserSettingKey.CAPTURING_MODE)).getCameraId();
        VideoSize videoSize = (VideoSize) this.mSetting.get(UserSettingKey.VIDEO_SIZE);
        if (videoStabilizer2 == VideoStabilizer.OFF || !VideoStabilizer.isSteadyShotSupported(cameraId, videoSize)) {
            return;
        }
        if (VideoStabilizer.isIntelligentActiveSupported(cameraId, videoSize)) {
            videoStabilizer = VideoStabilizer.INTELLIGENT_ACTIVE;
        } else {
            videoStabilizer = VideoStabilizer.STEADY_SHOT;
        }
        CamLog.d("SteadyShot -> " + videoStabilizer);
        this.mSetting.set(videoStabilizer);
    }
}
