package com.sonyericsson.cameracommon.focusview;

import android.graphics.Point;

/* JADX INFO: loaded from: classes.dex */
public interface FocusActionListener {
    void onCanceled();

    void onFaceSelected(Point point);

    void onLongPressed();

    void onReleased();

    void onTouched();
}
