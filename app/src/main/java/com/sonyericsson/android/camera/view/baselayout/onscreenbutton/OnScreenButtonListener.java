package com.sonyericsson.android.camera.view.baselayout.onscreenbutton;

import android.view.MotionEvent;

public interface OnScreenButtonListener {
    void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent);

    void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent);

    void onLongPress(OnScreenButton onScreenButton);

    void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent);

    void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent);
}
