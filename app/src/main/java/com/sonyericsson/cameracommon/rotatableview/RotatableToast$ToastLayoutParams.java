package com.sonyericsson.cameracommon.rotatableview;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public class RotatableToast$ToastLayoutParams {
    public final Rect bottomContainer;
    public final Rect topContainer;

    public RotatableToast$ToastLayoutParams(int i, int i2, Rect rect, Rect rect2) {
        this.topContainer = rect;
        int i3 = (-i) / 2;
        int i4 = (-i2) / 2;
        this.topContainer.offset(i3, i4);
        this.bottomContainer = rect2;
        this.bottomContainer.offset(i3, i4);
    }
}
