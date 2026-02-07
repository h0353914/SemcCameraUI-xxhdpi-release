package com.sonymobile.cameracommon.evf;

import android.content.Context;
import android.graphics.Rect;
import android.util.Size;
import android.view.Surface;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface Evf {
    Surface asSurface();

    View asView();

    void clear();

    Rect getRect();

    Size getSurfaceSize();

    void hide();

    boolean isShown();

    void onCreate(Context context);

    void onDestroy();

    void onPause();

    void onResume();

    void resize(int i, int i2);

    void setFixedSurfaceSize(int i, int i2);

    void setLifeCycleCallback(Evf$LifeCycleCallback evf$LifeCycleCallback);

    void show();
}
