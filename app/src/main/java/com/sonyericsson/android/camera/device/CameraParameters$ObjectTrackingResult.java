package com.sonyericsson.android.camera.device;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public class CameraParameters$ObjectTrackingResult {
    public boolean mIsLost;
    public Rect mRectOfTrackedObject;

    protected CameraParameters$ObjectTrackingResult(Rect rect, boolean z) {
        this.mRectOfTrackedObject = rect;
        this.mIsLost = z;
    }
}
