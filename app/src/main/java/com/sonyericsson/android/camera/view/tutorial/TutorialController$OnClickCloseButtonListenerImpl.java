package com.sonyericsson.android.camera.view.tutorial;

import android.view.View;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$WizardResult;

class TutorialController$OnClickCloseButtonListenerImpl implements TutorialContentView$OnClickCloseButtonListener {
    private final TutorialContentView$TutorialContent mTutorialContent;
    final /* synthetic */ TutorialController this$0;

    public TutorialController$OnClickCloseButtonListenerImpl(TutorialController tutorialController, TutorialContentView$TutorialContent tutorialContentView$TutorialContent) {
        this.this$0 = tutorialController;
        this.mTutorialContent = tutorialContentView$TutorialContent;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$OnClickCloseButtonListener
    public void onClickCloseButton(View view) {
        if (this.this$0.isOpened()) {
            TutorialController$TutorialType tutorialController$TutorialType = this.mTutorialContent.getCurrentTutorialPageInfo().type;
            int id = view.getId();
            if (id == 2131296487) {
                LocalResearchUtil.getInstance().sendSetupWizardEvent(Event$WizardResult.GOT_IT);
                LocalResearchUtil.getInstance().closeSetupWizard();
                if (TutorialController$4.$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[tutorialController$TutorialType.ordinal()] == 2) {
                    if (TutorialController.access$700(this.this$0) != null) {
                        TutorialController.access$700(this.this$0).onAccepted(tutorialController$TutorialType);
                        return;
                    }
                    return;
                } else {
                    this.this$0.doNextAction(tutorialController$TutorialType);
                    if (TutorialController.access$700(this.this$0) != null) {
                        TutorialController.access$700(this.this$0).onClose(this.mTutorialContent.getTutorialTypes());
                        return;
                    }
                    return;
                }
            }
            if (id == 2131296491) {
                LocalResearchUtil.getInstance().sendSetupWizardEvent(Event$WizardResult.SKIP);
                LocalResearchUtil.getInstance().closeSetupWizard();
                this.this$0.close();
                if (TutorialController.access$700(this.this$0) != null) {
                    TutorialController.access$700(this.this$0).onClose(this.mTutorialContent.getTutorialTypes());
                    return;
                }
                return;
            }
            if (id == 2131296676) {
                LocalResearchUtil.getInstance().sendSetupWizardEvent(Event$WizardResult.NO);
                LocalResearchUtil.getInstance().closeSetupWizard();
                this.this$0.doNextAction(tutorialController$TutorialType);
                if (TutorialController.access$700(this.this$0) != null) {
                    TutorialController.access$700(this.this$0).onDenied(tutorialController$TutorialType);
                    if (this.this$0.hasNext(tutorialController$TutorialType)) {
                        return;
                    }
                    TutorialController.access$700(this.this$0).onClose(this.mTutorialContent.getTutorialTypes());
                    return;
                }
                return;
            }
            if (id != 2131296684) {
                return;
            }
            LocalResearchUtil.getInstance().sendSetupWizardEvent(Event$WizardResult.YES);
            LocalResearchUtil.getInstance().closeSetupWizard();
            if (TutorialController$4.$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[tutorialController$TutorialType.ordinal()] != 1) {
                this.this$0.doNextAction(tutorialController$TutorialType);
            }
            if (TutorialController.access$700(this.this$0) != null) {
                TutorialController.access$700(this.this$0).onAccepted(tutorialController$TutorialType);
                if (tutorialController$TutorialType == TutorialController$TutorialType.SAVE_LOCATION || this.this$0.hasNext(tutorialController$TutorialType)) {
                    return;
                }
                TutorialController.access$700(this.this$0).onClose(this.mTutorialContent.getTutorialTypes());
            }
        }
    }
}
