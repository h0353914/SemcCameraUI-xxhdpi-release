package com.sonyericsson.android.camera.view.hint;

import android.content.Context;
import com.sonyericsson.android.camera.view.tutorial.TutorialController;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;

public class HintTextStandardSlowMotionDescription extends HintTextSlowMotionDescription {
    public HintTextStandardSlowMotionDescription(TutorialController tutorialController, Context context) {
        super(tutorialController, TutorialController$TutorialType.STANDARD_SLOW_MOTION, 2131690148, String.format(context.getString(2131690143), "120"));
    }
}
