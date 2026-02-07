package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.view.baselayout.BaseLayoutPattern;
import com.sonyericsson.android.camera.view.hint.HintTextContent;
import com.sonyericsson.android.camera.view.hint.HintTextSlowMotionDescription;
import com.sonyericsson.android.camera.view.hint.HintTextThermal;
import com.sonyericsson.android.camera.view.hint.HintTextViewController;
import com.sonyericsson.android.camera.view.hint.HintTextViewController$HintTextContentListener;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;
import com.sonyericsson.android.camera.view.tutorial.TutorialController;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$OpenType;

/* JADX INFO: loaded from: classes.dex */
public class ViewFinderImpl$HintTextListenerImpl implements HintTextViewController$HintTextContentListener {
    final /* synthetic */ ViewFinderImpl this$0;

    public ViewFinderImpl$HintTextListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextViewController$HintTextContentListener
    public void onContentButtonClick(HintTextViewController hintTextViewController, HintTextContent hintTextContent) {
        if (hintTextContent instanceof HintTextThermal) {
            onClickThermalReadMore();
        } else if (hintTextContent instanceof HintTextSlowMotionDescription) {
            onClickSlowMotionDescription(hintTextViewController, (HintTextSlowMotionDescription) hintTextContent);
        }
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextViewController$HintTextContentListener
    public void onStateChanged() {
        ViewFinderImpl.access$7000(this.this$0);
    }

    private void onClickSlowMotionDescription(HintTextViewController hintTextViewController, HintTextSlowMotionDescription hintTextSlowMotionDescription) {
        if (((SlowMotion) ViewFinderImpl.access$1000(this.this$0).getUserSetting().get(UserSettingKey.SLOW_MOTION)) == SlowMotion.OFF) {
            return;
        }
        hintTextViewController.hide();
        TutorialController tutorial = ViewFinderImpl.access$700(this.this$0).getTutorial();
        tutorial.open(TutorialController$OpenType.createByReadMore(hintTextSlowMotionDescription.getTutorialType()), null, new ViewFinderImpl$HintTextListenerImpl$1(this, hintTextViewController, hintTextSlowMotionDescription, tutorial));
        ViewFinderImpl.access$9200(this.this$0, BaseLayoutPattern.CLEAR);
        ViewFinderImpl.access$1300(this.this$0, false);
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_OPENED, new Object[0]);
    }

    private void onClickThermalReadMore() {
        StringBuilder sb = new StringBuilder();
        sb.append(ViewFinderImpl.access$9300(this.this$0, 2131689843));
        if (ViewFinderImpl.access$900(this.this$0) == CapturingMode.SCENE_RECOGNITION || ViewFinderImpl.access$900(this.this$0) == CapturingMode.SUPERIOR_FRONT || ViewFinderImpl.access$900(this.this$0) == CapturingMode.VIDEO || ViewFinderImpl.access$900(this.this$0) == CapturingMode.FRONT_VIDEO) {
            sb.append(System.lineSeparator());
            sb.append(ViewFinderImpl.access$9300(this.this$0, 2131689643));
        }
        if (!ViewFinderImpl.access$900(this.this$0).isFront()) {
            sb.append(System.lineSeparator());
            sb.append(ViewFinderImpl.access$9300(this.this$0, 2131689847));
        }
        if (ViewFinderImpl.access$900(this.this$0).isFront() && !ViewFinderImpl.access$900(this.this$0).isVideo()) {
            sb.append(System.lineSeparator());
            sb.append(ViewFinderImpl.access$9300(this.this$0, 2131689868));
        }
        if (ViewFinderImpl.access$9400(this.this$0)) {
            sb.append(System.lineSeparator());
            sb.append(ViewFinderImpl.access$9300(this.this$0, 2131690005));
        }
        MessageDialogRequest messageDialogRequest = new MessageDialogRequest();
        messageDialogRequest.mDialogId = DialogId.COOLING_MODE;
        messageDialogRequest.mMessageList = sb.toString();
        ViewFinderImpl.access$8200(this.this$0).request(messageDialogRequest);
    }
}
