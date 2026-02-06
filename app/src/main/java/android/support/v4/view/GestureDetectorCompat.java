package android.support.v4.view;

import android.content.Context;
import android.os.Build$VERSION;
import android.os.Handler;
import android.view.GestureDetector$OnDoubleTapListener;
import android.view.GestureDetector$OnGestureListener;
import android.view.MotionEvent;

public final class GestureDetectorCompat {
    private final GestureDetectorCompat$GestureDetectorCompatImpl mImpl;

    public GestureDetectorCompat(Context context, GestureDetector$OnGestureListener gestureDetector$OnGestureListener) {
        this(context, gestureDetector$OnGestureListener, null);
    }

    public GestureDetectorCompat(Context context, GestureDetector$OnGestureListener gestureDetector$OnGestureListener, Handler handler) {
        if (Build$VERSION.SDK_INT > 17) {
            this.mImpl = new GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2(context, gestureDetector$OnGestureListener, handler);
        } else {
            this.mImpl = new GestureDetectorCompat$GestureDetectorCompatImplBase(context, gestureDetector$OnGestureListener, handler);
        }
    }

    public boolean isLongpressEnabled() {
        return this.mImpl.isLongpressEnabled();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mImpl.onTouchEvent(motionEvent);
    }

    public void setIsLongpressEnabled(boolean z) {
        this.mImpl.setIsLongpressEnabled(z);
    }

    public void setOnDoubleTapListener(GestureDetector$OnDoubleTapListener gestureDetector$OnDoubleTapListener) {
        this.mImpl.setOnDoubleTapListener(gestureDetector$OnDoubleTapListener);
    }
}
