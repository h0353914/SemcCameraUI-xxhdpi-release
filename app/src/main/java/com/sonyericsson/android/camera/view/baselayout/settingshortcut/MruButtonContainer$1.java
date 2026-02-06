package com.sonyericsson.android.camera.view.baselayout.settingshortcut;

import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.android.camera.view.modeselector.Mode$OnStateChangeListener;

class MruButtonContainer$1 implements Mode$OnStateChangeListener {
    final /* synthetic */ MruButtonContainer this$0;

    MruButtonContainer$1(MruButtonContainer mruButtonContainer) {
        this.this$0 = mruButtonContainer;
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.Mode$OnStateChangeListener
    public void onAvailabilityChanged(Mode mode, boolean z) {
        if (mode == null || !mode.compare(MruButtonContainer.access$000(this.this$0).getMode())) {
            return;
        }
        this.this$0.setAvailability(z);
    }
}
