package com.sonyericsson.cameracommon.focusview;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface Rectangle$RectangleOnTouchListener {
    void onRectTouchCancel(View view, MotionEvent motionEvent);

    void onRectTouchDown(View view, MotionEvent motionEvent);

    void onRectTouchLongPress(View view, MotionEvent motionEvent);

    void onRectTouchUp(View view, MotionEvent motionEvent);
}
