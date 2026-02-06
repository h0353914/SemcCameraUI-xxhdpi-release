package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.util.SettingUtil;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$OnClickSetupWizardButtonListener;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;
import java.util.List;

class SetupWizardActivity$7 implements TutorialController$OnClickSetupWizardButtonListener {
    final /* synthetic */ SetupWizardActivity this$0;

    SetupWizardActivity$7(SetupWizardActivity setupWizardActivity) {
        this.this$0 = setupWizardActivity;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialController$OnClickSetupWizardButtonListener
    public void onAccepted(TutorialController$TutorialType tutorialController$TutorialType) {
        switch (tutorialController$TutorialType) {
            case SAVE_LOCATION:
                if (SetupWizardActivity.access$1700(this.this$0) && SetupWizardActivity.access$1800(this.this$0)) {
                    if (PermissionsUtil.arePermissionsGranted(this.this$0, this.this$0.REQUEST_LOCATION_PERMISSION)) {
                        SetupWizardActivity.access$700(this.this$0, true);
                        if (GeotagManager.isGeoTagEnabled(Geotag.ON, this.this$0)) {
                            if (!SetupWizardActivity.access$300(this.this$0).hasNext(tutorialController$TutorialType)) {
                                SetupWizardActivity.access$400(this.this$0);
                            } else {
                                SetupWizardActivity.access$300(this.this$0).doNextAction(TutorialController$TutorialType.SAVE_LOCATION);
                            }
                        } else {
                            MessageDialogRequest messageDialogRequest = new MessageDialogRequest();
                            messageDialogRequest.mDialogId = DialogId.LOCATION_SERVICE_DISABLE_ON_LAUNCH;
                            SetupWizardActivity.access$1200(this.this$0).request(messageDialogRequest);
                        }
                    } else {
                        SetupWizardActivity.access$700(this.this$0, false);
                        this.this$0.showOptionalRuntimePermissionDialog();
                    }
                } else {
                    if (SetupWizardActivity.access$1700(this.this$0) && !SetupWizardActivity.access$1800(this.this$0)) {
                        SetupWizardActivity.access$1900(this.this$0);
                    }
                    SetupWizardActivity.access$200(this.this$0, SetupWizardActivity$InterruptedBy.REQUEST_PERMISSION);
                }
                break;
            case SIDE_SENSE:
                if (SettingUtil.isSideSenseEnabled(false)) {
                    SetupWizardActivity.access$500(this.this$0, true);
                    SetupWizardActivity.access$600(this.this$0);
                } else {
                    MessageDialogRequest messageDialogRequest2 = new MessageDialogRequest();
                    messageDialogRequest2.mDialogId = DialogId.SIDE_SENSE_DISABLE_ON_LAUNCH;
                    SetupWizardActivity.access$1200(this.this$0).request(messageDialogRequest2);
                }
                break;
        }
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialController$OnClickSetupWizardButtonListener
    public void onDenied(TutorialController$TutorialType tutorialController$TutorialType) {
        switch (tutorialController$TutorialType) {
            case SAVE_LOCATION:
                SetupWizardActivity.access$700(this.this$0, false);
                break;
            case SIDE_SENSE:
                SetupWizardActivity.access$500(this.this$0, false);
                SetupWizardActivity.access$600(this.this$0);
                break;
        }
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialController$OnClickSetupWizardButtonListener
    public void onClose(List<TutorialController$TutorialType> list) {
        if (list.contains(TutorialController$TutorialType.SIDE_SENSE)) {
            SetupWizardActivity.access$500(this.this$0, SettingUtil.isSideSenseEnabled(false));
        }
        this.this$0.findViewById(2131296602).setVisibility(8);
        SetupWizardActivity.access$300(this.this$0).close();
        SetupWizardActivity.access$600(this.this$0);
    }
}
