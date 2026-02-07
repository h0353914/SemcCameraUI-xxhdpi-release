package com.sonyericsson.android.camera.view.tutorial;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface TutorialController$OnClickSetupWizardButtonListener {
    void onAccepted(TutorialController$TutorialType tutorialController$TutorialType);

    void onClose(List<TutorialController$TutorialType> list);

    void onDenied(TutorialController$TutorialType tutorialController$TutorialType);
}
