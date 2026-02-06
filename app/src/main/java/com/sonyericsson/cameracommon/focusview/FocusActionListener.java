package com.sonyericsson.cameracommon.focusview;

import android.graphics.Point;

public interface FocusActionListener {
    void onCanceled();

    void onFaceSelected(Point point);

    void onLongPressed();

    void onReleased();

    void onTouched();
}
