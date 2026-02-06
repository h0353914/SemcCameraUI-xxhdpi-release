package com.sonyericsson.android.camera.view;

import android.view.View;
import android.view.View$OnClickListener;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;

class ViewFinderImpl$7 implements View$OnClickListener {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$7(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (ViewFinderImpl.access$400(this.this$0) && this.this$0.isUserOperable()) {
            if (!ModeSelectorInternalMode.exists(ViewFinderImpl.access$900(this.this$0)) && !ViewFinderImpl.access$900(this.this$0).equals(CapturingMode.FRONT_PHOTO)) {
                ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_OPENED, ViewFinder$UiComponentKind.MODE_SELECTOR);
            } else {
                this.this$0.startReturnModeAnimation();
            }
        }
    }
}
