package com.sonyericsson.android.camera.view.sidetouch;

import android.graphics.Point;

class SideTouchUi$IconLayer {
    private Point mAttachPoint;
    private boolean mFocused;
    private SideTouchUi$Icon mIcon;
    private SideTouchUi$Type mIconType;

    private SideTouchUi$IconLayer() {
        this.mIconType = SideTouchUi$Type.NONE;
        this.mFocused = false;
    }

    /* synthetic */ SideTouchUi$IconLayer(SideTouchUi$1 sideTouchUi$1) {
        this();
    }

    static /* synthetic */ SideTouchUi$Icon access$300(SideTouchUi$IconLayer sideTouchUi$IconLayer) {
        return sideTouchUi$IconLayer.mIcon;
    }

    static /* synthetic */ SideTouchUi$Icon access$302(SideTouchUi$IconLayer sideTouchUi$IconLayer, SideTouchUi$Icon sideTouchUi$Icon) {
        sideTouchUi$IconLayer.mIcon = sideTouchUi$Icon;
        return sideTouchUi$Icon;
    }

    static /* synthetic */ boolean access$400(SideTouchUi$IconLayer sideTouchUi$IconLayer) {
        return sideTouchUi$IconLayer.isValid();
    }

    static /* synthetic */ boolean access$500(SideTouchUi$IconLayer sideTouchUi$IconLayer) {
        return sideTouchUi$IconLayer.mFocused;
    }

    static /* synthetic */ boolean access$502(SideTouchUi$IconLayer sideTouchUi$IconLayer, boolean z) {
        sideTouchUi$IconLayer.mFocused = z;
        return z;
    }

    static /* synthetic */ void access$600(SideTouchUi$IconLayer sideTouchUi$IconLayer) {
        sideTouchUi$IconLayer.invalid();
    }

    static /* synthetic */ SideTouchUi$Type access$700(SideTouchUi$IconLayer sideTouchUi$IconLayer) {
        return sideTouchUi$IconLayer.mIconType;
    }

    static /* synthetic */ SideTouchUi$Type access$702(SideTouchUi$IconLayer sideTouchUi$IconLayer, SideTouchUi$Type sideTouchUi$Type) {
        sideTouchUi$IconLayer.mIconType = sideTouchUi$Type;
        return sideTouchUi$Type;
    }

    static /* synthetic */ Point access$800(SideTouchUi$IconLayer sideTouchUi$IconLayer) {
        return sideTouchUi$IconLayer.mAttachPoint;
    }

    static /* synthetic */ Point access$802(SideTouchUi$IconLayer sideTouchUi$IconLayer, Point point) {
        sideTouchUi$IconLayer.mAttachPoint = point;
        return point;
    }

    private void invalid() {
        this.mIconType = SideTouchUi$Type.NONE;
        this.mFocused = false;
        this.mIcon = null;
        this.mAttachPoint = null;
    }

    private boolean isValid() {
        return this.mIcon != null;
    }
}
