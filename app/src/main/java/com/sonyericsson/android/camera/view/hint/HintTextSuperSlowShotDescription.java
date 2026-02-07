package com.sonyericsson.android.camera.view.hint;

import android.content.Context;
import com.sonyericsson.android.camera.view.tutorial.TutorialController;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;

/* JADX INFO: loaded from: classes.dex */
public class HintTextSuperSlowShotDescription extends HintTextSlowMotionDescription {
    public HintTextSuperSlowShotDescription(TutorialController tutorialController, Context context) {
        super(tutorialController, TutorialController$TutorialType.SUPER_SLOW_MOTION_SHOT, 2131690142, String.format(context.getString(2131690139), "960"));
    }
}
