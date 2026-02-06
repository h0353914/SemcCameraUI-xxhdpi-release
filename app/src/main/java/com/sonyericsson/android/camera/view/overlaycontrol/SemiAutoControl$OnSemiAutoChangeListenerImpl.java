package com.sonyericsson.android.camera.view.overlaycontrol;

import com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoControlView$OnSemiAutoChangeListener;

class SemiAutoControl$OnSemiAutoChangeListenerImpl implements SemiAutoControlView$OnSemiAutoChangeListener {
    final /* synthetic */ SemiAutoControl this$0;

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoControlView$OnSemiAutoChangeListener
    public void onSemiAutoDisabled() {
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoControlView$OnSemiAutoChangeListener
    public void onSemiAutoEnabled() {
    }

    private SemiAutoControl$OnSemiAutoChangeListenerImpl(SemiAutoControl semiAutoControl) {
        this.this$0 = semiAutoControl;
    }

    /* synthetic */ SemiAutoControl$OnSemiAutoChangeListenerImpl(SemiAutoControl semiAutoControl, SemiAutoControl$1 semiAutoControl$1) {
        this(semiAutoControl);
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoControlView$OnSemiAutoChangeListener
    public void onSemiAutoControlStarted() {
        this.this$0.notifyValueUpdateStart();
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoControlView$OnSemiAutoChangeListener
    public void onSemiAutoControlStopped() {
        this.this$0.notifyValueUpdateEnd();
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoControlView$OnSemiAutoChangeListener
    public void onBrightnessChanged(int i) {
        if (SemiAutoControl.access$100(this.this$0) != null) {
            SemiAutoControl.access$100(this.this$0).set(Float.valueOf(i / 100.0f));
        }
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoControlView$OnSemiAutoChangeListener
    public void onAmberBlueColorChanged(int i) {
        if (SemiAutoControl.access$200(this.this$0) != null) {
            SemiAutoControl.access$200(this.this$0).set(Float.valueOf(i / 100.0f));
        }
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoControlView$OnSemiAutoChangeListener
    public void onSemiAutoReset() {
        if (SemiAutoControl.access$200(this.this$0) != null) {
            SemiAutoControl.access$200(this.this$0).reset();
        }
        if (SemiAutoControl.access$100(this.this$0) != null) {
            SemiAutoControl.access$100(this.this$0).reset();
        }
    }
}
