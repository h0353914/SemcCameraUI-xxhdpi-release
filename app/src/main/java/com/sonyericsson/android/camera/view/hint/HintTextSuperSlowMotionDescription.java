package com.sonyericsson.android.camera.view.hint;

import android.content.Context;
import com.sonyericsson.android.camera.view.tutorial.TutorialController;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;

/* JADX INFO: loaded from: classes.dex */
public class HintTextSuperSlowMotionDescription extends HintTextSlowMotionDescription {
    public HintTextSuperSlowMotionDescription(TutorialController tutorialController, Context context) {
        super(tutorialController, TutorialController$TutorialType.SUPER_SLOW_MOTION, 2131690157, String.format(context.getString(2131690150), "960"));
    }
}
