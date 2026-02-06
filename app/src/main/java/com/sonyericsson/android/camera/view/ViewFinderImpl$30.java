package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor;

class ViewFinderImpl$30 implements ValueAccessor<Float> {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$30(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor
    public /* bridge */ /* synthetic */ Float get() {
        return get();
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor
    public /* bridge */ /* synthetic */ Float reset() {
        return reset();
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor
    public /* bridge */ /* synthetic */ void set(Float f) {
        set2(f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor
    public Float get() {
        return Float.valueOf(0.5f);
    }

    /* JADX INFO: renamed from: set, reason: avoid collision after fix types in other method */
    public void set2(Float f) {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_ON_BRIGHTNESS_CHANGED, f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor
    public Float reset() {
        ViewFinderImpl.access$9700(this.this$0);
        return Float.valueOf(0.5f);
    }
}
