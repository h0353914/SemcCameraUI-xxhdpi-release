package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;
import com.sonyericsson.cameracommon.sound.SoundPlayer$Type;
import java.util.ArrayList;
import java.util.Arrays;

public enum SelfTimer implements UserSettingValue, SelfTimerInterface {
    LONG(2131231172, 2131231181, 2131690105, true, 10000, -1, SoundPlayer$Type.SELF_TIMER_1SEC),
    SHORT(2131231174, 2131231182, 2131690107, true, 3000, -1, SoundPlayer$Type.SELF_TIMER_3SEC),
    GESTURE_SHUTTER_COUNT_DOWN(-1, -1, -1, false, 1500, 2131231234, null),
    SIDE_COUNT_DOWN(-1, -1, -1, false, 500, 2131231234, null),
    LAUNCH_AND_CAPTURE_COUNT_DOWN(-1, -1, -1, false, 0, -1, null),
    OFF(2131231175, 2131231183, 2131690115, false, 0, -1, null);

    public static final String TAG = "SelfTimer";
    private static final int sParameterTextId = 2131690113;
    private static final int sShortcutTitleTextId = 2131690112;
    private final boolean mBooleanValue;
    private final int mCountDownIconId;
    private final int mIconId;
    private int mMilliSeconds;
    private final int mShortcutIconId;
    private SoundPlayer$Type mSoundType;
    private final int mTextId;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getKeyTextId() {
        return 2131690113;
    }

    SelfTimer(int i, int i2, int i3, boolean z, int i4, int i5, SoundPlayer$Type soundPlayer$Type) {
        this.mIconId = i;
        this.mShortcutIconId = i2;
        this.mTextId = i3;
        this.mBooleanValue = z;
        this.mMilliSeconds = i4;
        this.mCountDownIconId = i5;
        this.mSoundType = soundPlayer$Type;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public void apply(UserSettingApplicable userSettingApplicable) {
        userSettingApplicable.set(this);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public UserSettingKey getKey() {
        return UserSettingKey.SELF_TIMER;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getIconId() {
        return this.mIconId;
    }

    public int getShortcutId() {
        return this.mShortcutIconId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public int getTextId() {
        return this.mTextId;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getValue() {
        return toString();
    }

    @Override // com.sonyericsson.cameracommon.settings.SelfTimerInterface
    public int getDurationInMillisecond() {
        return this.mMilliSeconds;
    }

    @Override // com.sonyericsson.cameracommon.settings.SelfTimerInterface
    public int getCountDownIconId() {
        return this.mCountDownIconId;
    }

    public static SelfTimer[] getOptions() {
        ArrayList arrayList = new ArrayList(Arrays.asList(values()));
        arrayList.remove(GESTURE_SHUTTER_COUNT_DOWN);
        arrayList.remove(SIDE_COUNT_DOWN);
        arrayList.remove(LAUNCH_AND_CAPTURE_COUNT_DOWN);
        SelfTimer[] selfTimerArr = new SelfTimer[arrayList.size()];
        arrayList.toArray(selfTimerArr);
        return selfTimerArr;
    }

    public static SelfTimer getDefaultValue(CapturingMode capturingMode) {
        return OFF;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValue
    public String getName() {
        return getClass().getName();
    }

    @Override // com.sonyericsson.cameracommon.settings.SelfTimerInterface
    public SoundPlayer$Type getSoundType() {
        return this.mSoundType;
    }

    public void setDurationInMillisecond(int i) {
        if (this == LAUNCH_AND_CAPTURE_COUNT_DOWN) {
            this.mMilliSeconds = i;
            if (this.mMilliSeconds < 4000) {
                this.mSoundType = SoundPlayer$Type.SELF_TIMER_3SEC;
            } else if (this.mMilliSeconds == 4000) {
                this.mSoundType = SoundPlayer$Type.SELF_TIMER_4SEC;
            } else {
                this.mSoundType = SoundPlayer$Type.SELF_TIMER_1SEC;
            }
        }
    }
}
