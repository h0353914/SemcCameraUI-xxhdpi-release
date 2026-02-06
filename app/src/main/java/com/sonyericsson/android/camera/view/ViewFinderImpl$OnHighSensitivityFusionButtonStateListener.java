package com.sonyericsson.android.camera.view;

import android.view.MotionEvent;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButton;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$DisplayTrigger;

class ViewFinderImpl$OnHighSensitivityFusionButtonStateListener implements OnScreenButtonListener {
    final /* synthetic */ ViewFinderImpl this$0;

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent) {
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent) {
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onLongPress(OnScreenButton onScreenButton) {
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent) {
    }

    private ViewFinderImpl$OnHighSensitivityFusionButtonStateListener(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$OnHighSensitivityFusionButtonStateListener(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        if (ViewFinderImpl.access$900(this.this$0) != CapturingMode.NORMAL || !ViewFinderImpl.access$1000(this.this$0).isSettingChangeAcceptable() || !this.this$0.isUserOperable()) {
            if (CamLog.VERBOSE) {
                CamLog.d("HighSensitivityFusion button was tapped in mode change");
            }
        } else {
            ViewFinderImpl.access$5900(this.this$0).closeCurrentDialog();
            if (this.this$0.openTutorial(TutorialController$DisplayTrigger.CHANGE_MANUAL_FUSION_SETTING)) {
                ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_OPENED, new Object[0]);
            } else {
                ViewFinderImpl.access$6000(this.this$0);
            }
        }
    }
}
