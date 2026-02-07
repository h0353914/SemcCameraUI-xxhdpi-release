package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$OnClickSetupWizardButtonListener;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$25 implements TutorialController$OnClickSetupWizardButtonListener {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$25(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    private void doPostProcessing(List<TutorialController$TutorialType> list) {
        MessageSettings messageSettings = ViewFinderImpl.access$500(this.this$0).getStoredSettings().getMessageSettings();
        Iterator<TutorialController$TutorialType> it = list.iterator();
        while (it.hasNext()) {
            Iterator<MessageType> it2 = it.next().messageTypes.iterator();
            while (it2.hasNext()) {
                messageSettings.setNeverShow(it2.next(), true);
                messageSettings.save();
            }
        }
        ViewFinderImpl.access$1300(this.this$0, !ViewFinderImpl.access$500(this.this$0).isOneShot());
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialController$OnClickSetupWizardButtonListener
    public void onAccepted(TutorialController$TutorialType tutorialController$TutorialType) {
        if (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[tutorialController$TutorialType.ordinal()] != 1) {
            return;
        }
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE, FusionMode.AUTO);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialController$OnClickSetupWizardButtonListener
    public void onDenied(TutorialController$TutorialType tutorialController$TutorialType) {
        if (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[tutorialController$TutorialType.ordinal()] != 1) {
            return;
        }
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE, FusionMode.OFF);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialController$OnClickSetupWizardButtonListener
    public void onClose(List<TutorialController$TutorialType> list) {
        if (list.contains(TutorialController$TutorialType.SUPER_SLOW_MOTION_MORE_OPTIONS)) {
            this.this$0.showHiSpeedSdCardRecommendDialogOnModeChange();
        } else if (list.contains(TutorialController$TutorialType.MANUAL_FUSION)) {
            ViewFinderImpl.access$6000(this.this$0);
        }
        doPostProcessing(list);
    }
}
