package com.sonyericsson.android.camera.configuration;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DisplayFlash;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;

/* JADX INFO: loaded from: classes.dex */
public enum UserSettingKey {
    AUTO_REVIEW(true, false, true, ParameterCategory.COMMON, 2131689980),
    VIDEO_AUTO_REVIEW(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690020),
    CAPTURING_MODE(true, false, false, ParameterCategory.CAPTURING_MODE, 2131689686),
    DESTINATION_TO_SAVE(true, false, true, ParameterCategory.COMMON, 2131690058),
    EV(true, false, false, ParameterCategory.CAPTURING_MODE, 2131689811),
    FACING(false, false, false, ParameterCategory.CAPTURING_MODE, 2131689665),
    SETTING_MENU(false, false, false, ParameterCategory.COMMON, -1),
    FAST_CAPTURE(true, false, true, ParameterCategory.COMMON, 2131689929),
    FLASH(true, false, true, ParameterCategory.COMMON, 2131689840),
    DISPLAY_FLASH(true, false, true, ParameterCategory.COMMON, 2131689840),
    FOCUS_MODE(true, false, false, ParameterCategory.CAPTURING_MODE, 2131689849),
    GEO_TAG(true, false, true, ParameterCategory.COMMON, 2131689856),
    HDR(true, false, false, ParameterCategory.CAPTURING_MODE, 2131689870),
    ISO(true, false, false, ParameterCategory.CAPTURING_MODE, 2131689927),
    METERING(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690001),
    MICROPHONE(true, false, false, ParameterCategory.CAPTURING_MODE, 2131689948),
    PHOTO_LIGHT(true, false, true, ParameterCategory.COMMON, 2131689841),
    RESOLUTION(true, false, false, ParameterCategory.CAPTURING_MODE, 2131689910),
    ASPECT_RATIO(true, false, false, ParameterCategory.CAPTURING_MODE, 2131689641),
    SELF_TIMER(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690113),
    SHUTTER_SOUND(true, false, true, ParameterCategory.COMMON, 2131689664),
    SMILE_CAPTURE(false, false, false, ParameterCategory.CAPTURING_MODE, 2131690164),
    CAMERA_KEY(true, false, true, ParameterCategory.CAPTURING_MODE, 2131689663),
    SOFT_SKIN(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690167),
    VIDEO_STABILIZER(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690170),
    SUPER_RESOLUTION(false, false, false, ParameterCategory.CAPTURING_MODE, -1),
    TOUCH_CAPTURE(true, false, true, ParameterCategory.COMMON, 2131690194),
    VIDEO_SELF_TIMER(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690113),
    VIDEO_SIZE(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690248),
    VIDEO_HDR(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690223),
    VIDEO_SMILE_CAPTURE(false, false, false, ParameterCategory.CAPTURING_MODE, 2131690249),
    VIDEO_SHUTTER_TRIGGER(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690244),
    VOLUME_KEY(true, false, true, ParameterCategory.COMMON, 2131690252),
    WHITE_BALANCE(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690260),
    SEMI_AUTO(false, false, false, ParameterCategory.CAPTURING_MODE, 0),
    GRID_LINE(true, false, true, ParameterCategory.COMMON, 2131689865),
    SIDE_SENSE(true, false, true, ParameterCategory.COMMON, 2131690131),
    HELP_GUIDE(false, false, true, ParameterCategory.COMMON, 2131689872),
    RESET_SETTINGS(false, false, true, ParameterCategory.COMMON, 2131690033),
    VIDEO_CODEC(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690228),
    OBJECT_TRACKING(true, false, false, ParameterCategory.CAPTURING_MODE, 2131689847),
    SHUTTER_TRIGGER(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690121),
    SHUTTER_SPEED(true, false, false, ParameterCategory.CAPTURING_MODE, 0),
    FOCUS_RANGE(true, false, false, ParameterCategory.CAPTURING_MODE, 0),
    TOUCH_INTENTION(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690198),
    PREDICTIVE_CAPTURE(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690005),
    SLOW_MOTION(true, false, false, ParameterCategory.CAPTURING_MODE, 2131690158),
    FRONT_ANGLE(true, false, true, ParameterCategory.COMMON, -1),
    FUSION_MODE(true, false, false, ParameterCategory.CAPTURING_MODE, 2131689855),
    DISTORTION_CORRECTION(true, false, true, ParameterCategory.COMMON, 2131689930),
    PREDICTIVE_LAUNCH(true, true, true, ParameterCategory.COMMON, 2131690016);

    public static final String TAG = "UserSettingKey";
    private final ParameterCategory mCategory;
    private final boolean mIsCommon;
    private boolean mIsSaved;
    private final boolean mIsSecureSetting;
    private UserSettingSelectability mSelectability;
    private final int mTitleTextId;

    UserSettingKey(boolean z, boolean z2, boolean z3, ParameterCategory parameterCategory, int i) {
        this.mIsSaved = z;
        this.mIsSecureSetting = z2;
        this.mIsCommon = z3;
        this.mCategory = parameterCategory;
        this.mTitleTextId = i;
    }

    public boolean isSaved() {
        return this.mIsSaved;
    }

    public void setSaved(boolean z) {
        this.mIsSaved = z;
    }

    public boolean isSecureSetting() {
        return this.mIsSecureSetting;
    }

    public boolean isCommon() {
        return this.mIsCommon;
    }

    public ParameterCategory getCategory() {
        return this.mCategory;
    }

    public int getTitleTextId() {
        switch (UserSettingKey$1.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[ordinal()]) {
            case 1:
                return Flash.getParameterKeyTitleTextId();
            case 2:
                return DisplayFlash.getParameterKeyTitleTextId();
            case 3:
                return VideoStabilizer.getParameterKeyTitleText();
            default:
                return this.mTitleTextId;
        }
    }

    public void setSelectability(UserSettingSelectability userSettingSelectability) {
        this.mSelectability = userSettingSelectability;
    }

    public UserSettingSelectability getSelectability() {
        return this.mSelectability;
    }

    public DialogId getRestrictMessageDialogId(UserSettings userSettings) {
        DialogId dialogId = DialogId.DLG_INVALID;
        VideoHdr videoHdr = (VideoHdr) userSettings.get(VIDEO_HDR);
        CapturingMode capturingMode = (CapturingMode) userSettings.get(CAPTURING_MODE);
        switch (UserSettingKey$1.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[ordinal()]) {
            case 3:
            case 7:
            case 8:
                if (videoHdr == VideoHdr.HDR_ON) {
                    return DialogId.VIDEO_HDR_RESTRICTION;
                }
                return DialogId.RESTRICT_STEADYSHOT_VIDEO_RESOLUTION;
            case 4:
            case 5:
            case 6:
            default:
                return dialogId;
            case 9:
                if (videoHdr == VideoHdr.HDR_ON) {
                    return DialogId.VIDEO_HDR_RESTRICTION;
                }
                return capturingMode.isVideo() ? DialogId.RESTRICT_STEADYSHOT_VIDEO_RESOLUTION : dialogId;
            case 10:
                if (videoHdr == VideoHdr.HDR_ON) {
                    return DialogId.VIDEO_HDR_RESTRICTION;
                }
                if (capturingMode.isVideo()) {
                    return DialogId.RESTRICT_STEADYSHOT_VIDEO_RESOLUTION;
                }
                return capturingMode == CapturingMode.NORMAL ? DialogId.RESTRICT_PHOTO_RESOLUTION : dialogId;
            case 11:
                if (videoHdr == VideoHdr.HDR_ON) {
                    return DialogId.VIDEO_HDR_RESTRICTION;
                }
                if (capturingMode == CapturingMode.SLOW_MOTION) {
                    return DialogId.RESTRICT_SLOW_VIDEO_RESOLUTION;
                }
                return DialogId.RESTRICT_STEADYSHOT_VIDEO_RESOLUTION;
            case 12:
                return DialogId.RESTRICT_STEADYSHOT_VIDEO_RESOLUTION;
        }
    }

    public boolean isSelectable() {
        return getSelectability() == UserSettingSelectability.SELECTABLE;
    }

    public boolean isInvalid() {
        return getSelectability() == UserSettingSelectability.INVALID;
    }
}
