package com.sonyericsson.android.camera.view.tutorial;

import com.sonyericsson.android.camera.setting.MessageType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public enum TutorialController$TutorialType {
    SAVE_LOCATION(MessageType.NO_MESSAGE),
    PREDICTIVE_LAUNCH(MessageType.NO_MESSAGE),
    DUAL_CAMERA(MessageType.NO_MESSAGE),
    EYE_GUIDE(MessageType.TUTORIAL_EYE_GUIDE),
    HAND_SHUTTER(MessageType.TUTORIAL_HAND_SHUTTER),
    SUPER_SLOW_MOTION_MORE_OPTIONS(MessageType.TUTORIAL_SUPER_SLOW_MOTION),
    SUPER_SLOW_MOTION(MessageType.NO_MESSAGE),
    SUPER_SLOW_MOTION_SHOT(MessageType.TUTORIAL_SUPER_SLOW_MOTION_SHOT),
    STANDARD_SLOW_MOTION(MessageType.TUTORIAL_STANDARD_SLOW_MOTION),
    MANUAL_FUSION(MessageType.TUTORIAL_MANUAL_FUSION),
    VIDEO_FUSION(MessageType.TUTORIAL_VIDEO_FUSION),
    SIDE_SENSE(MessageType.NO_MESSAGE);

    public final List<MessageType> messageTypes;

    TutorialController$TutorialType(MessageType... messageTypeArr) {
        this.messageTypes = new ArrayList(Arrays.asList(messageTypeArr));
    }
}
