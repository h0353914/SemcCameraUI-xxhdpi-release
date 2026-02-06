package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory$ButtonType;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener;

public class ViewFinderImpl$SideTouchUiButtonListenerFactory {
    final /* synthetic */ ViewFinderImpl this$0;

    public ViewFinderImpl$SideTouchUiButtonListenerFactory(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    public OnScreenButtonListener create(OnScreenButtonItemFactory$ButtonType onScreenButtonItemFactory$ButtonType) {
        return new ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl(this, onScreenButtonItemFactory$ButtonType);
    }
}
