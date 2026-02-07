package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import android.view.MotionEvent;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButton;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory$ButtonType;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl implements OnScreenButtonListener {
    private final OnScreenButtonItemFactory$ButtonType mButtonType;
    final /* synthetic */ ViewFinderImpl$SideTouchUiButtonListenerFactory this$1;

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent) {
    }

    public ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl(ViewFinderImpl$SideTouchUiButtonListenerFactory viewFinderImpl$SideTouchUiButtonListenerFactory, OnScreenButtonItemFactory$ButtonType onScreenButtonItemFactory$ButtonType) {
        this.this$1 = viewFinderImpl$SideTouchUiButtonListenerFactory;
        this.mButtonType = onScreenButtonItemFactory$ButtonType;
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        ViewFinderImpl.access$2000(this.this$1.this$0).sendTouchDown(this.mButtonType);
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        ViewFinderImpl.access$2000(this.this$1.this$0).sendTouchUp(this.mButtonType, new Point((int) motionEvent.getX(), (int) motionEvent.getY()));
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        ViewFinderImpl.access$2000(this.this$1.this$0).sendCancel(this.mButtonType);
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onLongPress(OnScreenButton onScreenButton) {
        ViewFinderImpl.access$2000(this.this$1.this$0).sendLongClick(this.mButtonType, null);
    }
}
