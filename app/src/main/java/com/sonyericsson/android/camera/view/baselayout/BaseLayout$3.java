package com.sonyericsson.android.camera.view.baselayout;

import android.view.ViewGroup;
import com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl;
import com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl$StateListener;
import com.sonyericsson.android.camera.view.overlaycontrol.SemiAutoControl;
import com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor;

class BaseLayout$3 extends BaseLayout$LazyInitializer<OverlayControl> {
    final /* synthetic */ BaseLayout this$0;
    final /* synthetic */ ValueAccessor val$brightness;
    final /* synthetic */ ValueAccessor val$color;
    final /* synthetic */ boolean val$isCollapsed;
    final /* synthetic */ ViewGroup val$parent;
    final /* synthetic */ OverlayControl$StateListener val$stateListener;

    BaseLayout$3(BaseLayout baseLayout, ViewGroup viewGroup, OverlayControl$StateListener overlayControl$StateListener, ValueAccessor valueAccessor, ValueAccessor valueAccessor2, boolean z) {
        this.this$0 = baseLayout;
        this.val$parent = viewGroup;
        this.val$stateListener = overlayControl$StateListener;
        this.val$color = valueAccessor;
        this.val$brightness = valueAccessor2;
        this.val$isCollapsed = z;
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.BaseLayout$LazyInitializer
    public /* bridge */ /* synthetic */ OverlayControl initView() {
        return initView();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.view.baselayout.BaseLayout$LazyInitializer
    public OverlayControl initView() {
        return new SemiAutoControl(this.val$parent, BaseLayout.access$600(this.this$0), this.val$stateListener, this.val$color, this.val$brightness, this.val$isCollapsed);
    }
}
