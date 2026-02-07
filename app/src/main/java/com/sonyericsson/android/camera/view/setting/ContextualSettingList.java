package com.sonyericsson.android.camera.view.setting;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;

/* JADX INFO: loaded from: classes.dex */
public class ContextualSettingList {
    private final ContextualSettingList$Group mAuto;
    private final ContextualSettingList$Group mManual;
    private final ContextualSettingList$Group mOneShotPhoto;
    private final ContextualSettingList$Group mOneShotVideo;
    private final ContextualSettingList$Group mSlowMotion;
    private final ContextualSettingList$Group mVideo;

    public ContextualSettingList(boolean z) {
        ContextualSettingList$Category contextualSettingList$CategoryCategory = category(2131689953, UserSettingKey.GEO_TAG, UserSettingKey.TOUCH_CAPTURE, UserSettingKey.GRID_LINE, UserSettingKey.AUTO_REVIEW, UserSettingKey.CAMERA_KEY, UserSettingKey.VOLUME_KEY, UserSettingKey.SHUTTER_SOUND, UserSettingKey.DESTINATION_TO_SAVE, UserSettingKey.PREDICTIVE_LAUNCH, UserSettingKey.FAST_CAPTURE, UserSettingKey.HELP_GUIDE, UserSettingKey.RESET_SETTINGS);
        ContextualSettingList$Category contextualSettingList$CategoryCategory2 = category(2131689953, new UserSettingKey[0]);
        this.mAuto = group(category(2131689668, UserSettingKey.ISO, UserSettingKey.RESOLUTION, UserSettingKey.PREDICTIVE_CAPTURE, UserSettingKey.OBJECT_TRACKING, UserSettingKey.METERING, UserSettingKey.SHUTTER_TRIGGER, UserSettingKey.SOFT_SKIN, UserSettingKey.FUSION_MODE, UserSettingKey.DISTORTION_CORRECTION, UserSettingKey.SIDE_SENSE), contextualSettingList$CategoryCategory);
        this.mOneShotPhoto = group(category(2131689668, UserSettingKey.ISO, UserSettingKey.RESOLUTION, UserSettingKey.OBJECT_TRACKING, UserSettingKey.METERING, UserSettingKey.SHUTTER_TRIGGER, UserSettingKey.SOFT_SKIN, UserSettingKey.FUSION_MODE, UserSettingKey.DISTORTION_CORRECTION, UserSettingKey.SIDE_SENSE), contextualSettingList$CategoryCategory2);
        this.mManual = group(category(2131689677, UserSettingKey.RESOLUTION, UserSettingKey.TOUCH_INTENTION, UserSettingKey.METERING, UserSettingKey.SHUTTER_TRIGGER, UserSettingKey.SOFT_SKIN, UserSettingKey.DISTORTION_CORRECTION), contextualSettingList$CategoryCategory);
        this.mSlowMotion = group(category(2131689681, UserSettingKey.VIDEO_SIZE, UserSettingKey.SLOW_MOTION), contextualSettingList$CategoryCategory);
        if (z) {
            this.mVideo = group(category(2131689631, UserSettingKey.VIDEO_SIZE, UserSettingKey.OBJECT_TRACKING, UserSettingKey.VIDEO_SHUTTER_TRIGGER, UserSettingKey.VIDEO_STABILIZER, UserSettingKey.VIDEO_CODEC, UserSettingKey.SIDE_SENSE), contextualSettingList$CategoryCategory);
            this.mOneShotVideo = group(category(2131689631, UserSettingKey.VIDEO_SIZE, UserSettingKey.OBJECT_TRACKING, UserSettingKey.VIDEO_SHUTTER_TRIGGER, UserSettingKey.VIDEO_STABILIZER, UserSettingKey.VIDEO_CODEC, UserSettingKey.SIDE_SENSE), contextualSettingList$CategoryCategory2);
        } else {
            this.mVideo = group(category(2131689631, UserSettingKey.VIDEO_SIZE, UserSettingKey.OBJECT_TRACKING, UserSettingKey.VIDEO_SHUTTER_TRIGGER, UserSettingKey.VIDEO_STABILIZER, UserSettingKey.SIDE_SENSE), contextualSettingList$CategoryCategory);
            this.mOneShotVideo = group(category(2131689631, UserSettingKey.VIDEO_SIZE, UserSettingKey.OBJECT_TRACKING, UserSettingKey.VIDEO_SHUTTER_TRIGGER, UserSettingKey.VIDEO_STABILIZER, UserSettingKey.SIDE_SENSE), contextualSettingList$CategoryCategory2);
        }
    }

    public ContextualSettingList$Group get(CapturingMode capturingMode, boolean z) {
        switch (capturingMode) {
            case SCENE_RECOGNITION:
            case SUPERIOR_FRONT:
                return z ? this.mOneShotPhoto : this.mAuto;
            case NORMAL:
            case FRONT_PHOTO:
                return this.mManual;
            case VIDEO:
            case FRONT_VIDEO:
                return z ? this.mOneShotVideo : this.mVideo;
            case SLOW_MOTION:
                return this.mSlowMotion;
            default:
                throw new IllegalArgumentException("The specified mode is not supported. mode:" + capturingMode.name());
        }
    }

    private static ContextualSettingList$Category category(int i, UserSettingKey... userSettingKeyArr) {
        return new ContextualSettingList$Category(i, userSettingKeyArr);
    }

    private static ContextualSettingList$Group group(ContextualSettingList$Category contextualSettingList$Category, ContextualSettingList$Category contextualSettingList$Category2) {
        return new ContextualSettingList$Group(contextualSettingList$Category, contextualSettingList$Category2);
    }
}
