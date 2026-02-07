package com.sonyericsson.android.camera.view.baselayout.onscreenbutton;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public interface OnScreenButtonListener {
    void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent);

    void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent);

    void onLongPress(OnScreenButton onScreenButton);

    void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent);

    void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent);
}
