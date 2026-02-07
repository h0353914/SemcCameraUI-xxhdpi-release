package com.sonyericsson.cameracommon.controller;

/* JADX INFO: loaded from: classes.dex */
public class ZoomController {
    private static final float PINCH_ZOOM_COEFFICIENT = 0.2f;

    public static float getZoomValue(float f, float f2) {
        return f + (f2 * 0.2f);
    }
}
