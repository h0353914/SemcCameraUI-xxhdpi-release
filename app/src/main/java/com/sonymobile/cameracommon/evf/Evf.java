package com.sonymobile.cameracommon.evf;
import android.content.Context; import android.graphics.Rect;
import android.util.Size; import android.view.Surface;
import android.view.View;
public interface Evf {














    public static class EvfFactory {
        public static Evf generate() {
            return new SurfaceViewEvf();
        }
    }
    Surface asSurface(); View asView(); void clear();
    Rect getRect(); Size getSurfaceSize(); void hide();
    boolean isShown(); void onCreate(Context context); void onDestroy();
    void onPause(); void onResume(); void resize(int i, int i2);
    void setFixedSurfaceSize(int i, int i2); void setLifeCycleCallback(LifeCycleCallback lifeCycleCallback);
    void show();



    public interface LifeCycleCallback {
        void onEvfFinalized(Evf evf);
        void onEvfInitialized(Evf evf, int i, int i2);
        void onEvfSizeChanged(Evf evf, int i, int i2);
    }
}
