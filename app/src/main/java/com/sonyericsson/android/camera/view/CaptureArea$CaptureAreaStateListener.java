package com.sonyericsson.android.camera.view;

import android.graphics.Point;

/* JADX INFO: loaded from: classes.dex */
public interface CaptureArea$CaptureAreaStateListener {
    void onCaptureAreaCanceled();

    void onCaptureAreaIsReadyToScale();

    void onCaptureAreaLongPressed(Point point);

    void onCaptureAreaMoved();

    void onCaptureAreaReleased(Point point);

    void onCaptureAreaScaled(float f);

    void onCaptureAreaSingleTapUp(Point point);

    void onCaptureAreaStopped();

    void onCaptureAreaTouched();
}
