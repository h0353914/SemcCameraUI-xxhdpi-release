package com.sonymobile.cameracommon.research;

import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonymobile.cameracommon.research.parameters.Event$Category;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$SendSettingsCommonValueTask implements Runnable {
    private final UserSettingValue mValue;
    final /* synthetic */ ResearchUtil this$0;

    /* synthetic */ ResearchUtil$SendSettingsCommonValueTask(ResearchUtil researchUtil, UserSettingValue userSettingValue, ResearchUtil$1 researchUtil$1) {
        this(researchUtil, userSettingValue);
    }

    private ResearchUtil$SendSettingsCommonValueTask(ResearchUtil researchUtil, UserSettingValue userSettingValue) {
        this.this$0 = researchUtil;
        this.mValue = userSettingValue;
    }

    @Override // java.lang.Runnable
    public void run() {
        switch (this.mValue.getKey()) {
            case AUTO_REVIEW:
            case GEO_TAG:
            case TOUCH_CAPTURE:
            case VOLUME_KEY:
            case SHUTTER_SOUND:
            case DESTINATION_TO_SAVE:
            case FAST_CAPTURE:
            case GRID_LINE:
            case SIDE_SENSE:
            case DISTORTION_CORRECTION:
            case PREDICTIVE_LAUNCH:
            case HELP_GUIDE:
            case RESET_SETTINGS:
                this.this$0.sendEvent(Event$Category.SETTINGS_COMMON, this.mValue.getKey().toString(), this.mValue.toString());
                break;
        }
    }
}
