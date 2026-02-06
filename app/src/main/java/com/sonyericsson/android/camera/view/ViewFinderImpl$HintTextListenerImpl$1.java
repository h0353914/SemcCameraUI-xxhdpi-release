package com.sonyericsson.android.camera.view;

import android.view.View;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.view.hint.HintTextSlowMotionDescription;
import com.sonyericsson.android.camera.view.hint.HintTextViewController;
import com.sonyericsson.android.camera.view.tutorial.TutorialContentView$OnClickCloseButtonListener;
import com.sonyericsson.android.camera.view.tutorial.TutorialController;
import com.sonymobile.cameracommon.research.parameters.Event$WizardResult;

class ViewFinderImpl$HintTextListenerImpl$1 implements TutorialContentView$OnClickCloseButtonListener {
    final /* synthetic */ ViewFinderImpl$HintTextListenerImpl this$1;
    final /* synthetic */ HintTextSlowMotionDescription val$content;
    final /* synthetic */ HintTextViewController val$controller;
    final /* synthetic */ TutorialController val$tutorial;

    ViewFinderImpl$HintTextListenerImpl$1(ViewFinderImpl$HintTextListenerImpl viewFinderImpl$HintTextListenerImpl, HintTextViewController hintTextViewController, HintTextSlowMotionDescription hintTextSlowMotionDescription, TutorialController tutorialController) {
        this.this$1 = viewFinderImpl$HintTextListenerImpl;
        this.val$controller = hintTextViewController;
        this.val$content = hintTextSlowMotionDescription;
        this.val$tutorial = tutorialController;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$OnClickCloseButtonListener
    public void onClickCloseButton(View view) {
        int id = view.getId();
        if (id == 2131296487) {
            LocalResearchUtil.getInstance().sendSetupWizardEvent(Event$WizardResult.GOT_IT);
            LocalResearchUtil.getInstance().closeSetupWizard();
        } else if (id == 2131296491) {
            LocalResearchUtil.getInstance().sendSetupWizardEvent(Event$WizardResult.SKIP);
            LocalResearchUtil.getInstance().closeSetupWizard();
        }
        this.val$controller.cancel(this.val$content.getTag());
        this.val$tutorial.close();
        if (ViewFinderImpl.access$3900(this.this$1.this$0) != null) {
            ViewFinderImpl.access$3900(this.this$1.this$0).showAll();
        }
        ViewFinderImpl.access$1300(this.this$1.this$0, !ViewFinderImpl.access$500(this.this$1.this$0).isOneShot());
        ViewFinderImpl.access$1000(this.this$1.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
    }
}
