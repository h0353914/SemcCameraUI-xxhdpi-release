package com.sonyericsson.android.camera.view.setting;

import com.sonyericsson.android.camera.LaunchCondition$LaunchTrigger;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.controller.launcher.ApplicationLauncher;
import com.sonyericsson.android.camera.controller.launcher.ApplicationLauncher$MonochromeType;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$ModeChangeMethod;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface;
import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;

class SettingUi$MonochromeExecutor<T> implements SettingExecutorInterface<T> {
    boolean mIsMostRecentlyUsed;
    Mode mMode;
    final /* synthetic */ SettingUi this$0;

    /* synthetic */ SettingUi$MonochromeExecutor(SettingUi settingUi, boolean z, Mode mode, SettingUi$1 settingUi$1) {
        this(settingUi, z, mode);
    }

    private SettingUi$MonochromeExecutor(SettingUi settingUi, boolean z, Mode mode) {
        this.this$0 = settingUi;
        this.mIsMostRecentlyUsed = false;
        this.mIsMostRecentlyUsed = z;
        this.mMode = mode;
    }

    @Override // com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<T> typedSettingItem) {
        SettingUi.access$400(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_MRU_SHORTCUT, this.mMode);
        if (this.mIsMostRecentlyUsed) {
            LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.MRU_SHORTCUT);
            LocalResearchUtil.getInstance().setLaunchBy(LaunchCondition$LaunchTrigger.MRU_SHORTCUT);
        } else {
            LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.MODE_SELECTOR);
            LocalResearchUtil.getInstance().setLaunchBy(LaunchCondition$LaunchTrigger.MODE_SELECTOR);
        }
        CapturingMode capturingMode = (CapturingMode) SettingUi.access$200(this.this$0).get(UserSettingKey.CAPTURING_MODE);
        switch ((ApplicationLauncher$MonochromeType) typedSettingItem.getData()) {
            case MONOCHROME_PHOTO:
                if (SettingUi.access$300(this.this$0).isDeviceInSecurityLock()) {
                    SettingUi.access$400(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG, CapturingMode.SCENE_RECOGNITION, this.mMode);
                } else {
                    LocalResearchUtil.getInstance().sendEventInternalModeChange(capturingMode, ModeSelectorInternalMode.DUAL_MONOCHROME);
                    ApplicationLauncher.launchExternalCamera(SettingUi.access$300(this.this$0), 17, SettingUi.access$1000(this.this$0).getUserSetting(), CapturingMode.SCENE_RECOGNITION, true);
                }
                break;
            case MONOCHROME_VIDEO:
                if (SettingUi.access$300(this.this$0).isDeviceInSecurityLock()) {
                    SettingUi.access$400(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG, CapturingMode.VIDEO, this.mMode);
                } else {
                    LocalResearchUtil.getInstance().sendEventInternalModeChange(capturingMode, ModeSelectorInternalMode.DUAL_MONOCHROME);
                    ApplicationLauncher.launchExternalCamera(SettingUi.access$300(this.this$0), 17, SettingUi.access$1000(this.this$0).getUserSetting(), CapturingMode.VIDEO, true);
                }
                break;
        }
        SettingUi.access$600(this.this$0).closeAllSettingDialogs();
    }
}
