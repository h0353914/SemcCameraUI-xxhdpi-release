package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

class CameraSettingsMigrator$1 extends HashMap<CapturingMode, List<UserSettingKey>> {
    CameraSettingsMigrator$1() {
        put(CapturingMode.NORMAL, Arrays.asList(UserSettingKey.RESOLUTION, UserSettingKey.WHITE_BALANCE, UserSettingKey.EV, UserSettingKey.SHUTTER_SPEED, UserSettingKey.FOCUS_RANGE, UserSettingKey.SELF_TIMER, UserSettingKey.FUSION_MODE, UserSettingKey.ISO, UserSettingKey.HDR, UserSettingKey.TOUCH_INTENTION, UserSettingKey.OBJECT_TRACKING, UserSettingKey.METERING, UserSettingKey.SHUTTER_TRIGGER));
        put(CapturingMode.SCENE_RECOGNITION, Arrays.asList(UserSettingKey.RESOLUTION, UserSettingKey.SELF_TIMER, UserSettingKey.OBJECT_TRACKING, UserSettingKey.SHUTTER_TRIGGER, UserSettingKey.TOUCH_INTENTION, UserSettingKey.PREDICTIVE_CAPTURE, UserSettingKey.FUSION_MODE));
        put(CapturingMode.VIDEO, Arrays.asList(UserSettingKey.VIDEO_HDR, UserSettingKey.FUSION_MODE, UserSettingKey.VIDEO_SIZE, UserSettingKey.OBJECT_TRACKING, UserSettingKey.VIDEO_SHUTTER_TRIGGER, UserSettingKey.VIDEO_STABILIZER, UserSettingKey.VIDEO_CODEC));
        put(CapturingMode.FRONT_PHOTO, Arrays.asList(UserSettingKey.RESOLUTION, UserSettingKey.SELF_TIMER, UserSettingKey.WHITE_BALANCE, UserSettingKey.EV, UserSettingKey.HDR, UserSettingKey.SHUTTER_TRIGGER, UserSettingKey.SOFT_SKIN));
        put(CapturingMode.SUPERIOR_FRONT, Arrays.asList(UserSettingKey.RESOLUTION, UserSettingKey.SELF_TIMER, UserSettingKey.SOFT_SKIN, UserSettingKey.SHUTTER_TRIGGER));
        put(CapturingMode.FRONT_VIDEO, Arrays.asList(UserSettingKey.VIDEO_SIZE, UserSettingKey.VIDEO_SHUTTER_TRIGGER, UserSettingKey.VIDEO_STABILIZER));
        put(CapturingMode.SLOW_MOTION, Arrays.asList(UserSettingKey.VIDEO_SIZE, UserSettingKey.SLOW_MOTION));
    }
}
