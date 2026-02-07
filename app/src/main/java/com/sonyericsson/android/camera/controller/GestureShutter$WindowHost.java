package com.sonyericsson.android.camera.controller;

import android.graphics.Point;
import android.graphics.Rect;
import com.sonyericsson.android.camera.view.GestureShutterView;

/* JADX INFO: loaded from: classes.dex */
public interface GestureShutter$WindowHost {
    GestureShutterView getGestureShutterView();

    Point getPreviewSize();

    Rect getViewFinderSize();

    void hideGestureShutterView();

    void showGestureShutterView();
}
