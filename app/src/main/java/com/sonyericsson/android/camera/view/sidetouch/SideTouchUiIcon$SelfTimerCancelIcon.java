package com.sonyericsson.android.camera.view.sidetouch;

import android.content.Context;
import com.sonyericsson.android.camera.view.ViewFinderImpl$SideTouchUiButtonListenerFactory;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory$ButtonType;

/* JADX INFO: loaded from: classes.dex */
protected final class SideTouchUiIcon$SelfTimerCancelIcon extends SideTouchUiIcon$ScreenButtonIcon {
    public SideTouchUiIcon$SelfTimerCancelIcon(Context context, int i, ViewFinderImpl$SideTouchUiButtonListenerFactory viewFinderImpl$SideTouchUiButtonListenerFactory) {
        super(context, i, viewFinderImpl$SideTouchUiButtonListenerFactory);
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon$ScreenButtonIcon
    protected void setupButtons() {
        setupButtonMain(OnScreenButtonItemFactory$ButtonType.CANCEL_SELFTIMER_SIDE, this.mOrientation, true);
    }
}
