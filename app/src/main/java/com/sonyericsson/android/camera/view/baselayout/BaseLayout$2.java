package com.sonyericsson.android.camera.view.baselayout;

import android.view.ViewGroup;
import com.sonyericsson.android.camera.setting.UiControlSettings;
import com.sonyericsson.android.camera.view.overlaycontrol.EnumValueAccessor;
import com.sonyericsson.android.camera.view.overlaycontrol.ImageQualityControl;
import com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl;
import com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl$StateListener;

class BaseLayout$2 extends BaseLayout$LazyInitializer<OverlayControl> {
    final /* synthetic */ BaseLayout this$0;
    final /* synthetic */ EnumValueAccessor val$capturingMode;
    final /* synthetic */ EnumValueAccessor val$exposure;
    final /* synthetic */ EnumValueAccessor val$focusRange;
    final /* synthetic */ EnumValueAccessor val$iso;
    final /* synthetic */ ViewGroup val$parent;
    final /* synthetic */ EnumValueAccessor val$shutterSpeed;
    final /* synthetic */ OverlayControl$StateListener val$stateListener;
    final /* synthetic */ UiControlSettings val$uiSettings;
    final /* synthetic */ EnumValueAccessor val$whiteBalance;

    BaseLayout$2(BaseLayout baseLayout, ViewGroup viewGroup, UiControlSettings uiControlSettings, OverlayControl$StateListener overlayControl$StateListener, EnumValueAccessor enumValueAccessor, EnumValueAccessor enumValueAccessor2, EnumValueAccessor enumValueAccessor3, EnumValueAccessor enumValueAccessor4, EnumValueAccessor enumValueAccessor5, EnumValueAccessor enumValueAccessor6) {
        this.this$0 = baseLayout;
        this.val$parent = viewGroup;
        this.val$uiSettings = uiControlSettings;
        this.val$stateListener = overlayControl$StateListener;
        this.val$capturingMode = enumValueAccessor;
        this.val$focusRange = enumValueAccessor2;
        this.val$shutterSpeed = enumValueAccessor3;
        this.val$iso = enumValueAccessor4;
        this.val$exposure = enumValueAccessor5;
        this.val$whiteBalance = enumValueAccessor6;
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.BaseLayout$LazyInitializer
    /* JADX INFO: renamed from: initView, reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ OverlayControl initView2() {
        return initView();
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.BaseLayout$LazyInitializer
    public OverlayControl initView() {
        return new ImageQualityControl(this.val$parent, this.val$uiSettings, BaseLayout.access$500(this.this$0), BaseLayout.access$600(this.this$0), this.val$stateListener, this.val$capturingMode, this.val$focusRange, this.val$shutterSpeed, this.val$iso, this.val$exposure, this.val$whiteBalance);
    }
}
