package com.sonyericsson.android.camera.view.sidetouch;

import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;

public interface SideTouchUi$Icon {
    View attach(ViewGroup viewGroup, Point point);

    void detach(ViewGroup viewGroup);

    void onFocusChanged(boolean z);

    void setOnDetachedListener(SideTouchUi$Icon$OnDetachedListener sideTouchUi$Icon$OnDetachedListener);

    void setUiOrientation(int i);

    void show();
}
