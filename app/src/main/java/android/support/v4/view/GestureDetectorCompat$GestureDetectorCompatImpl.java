package android.support.v4.view;

import android.view.GestureDetector$OnDoubleTapListener;
import android.view.MotionEvent;

interface GestureDetectorCompat$GestureDetectorCompatImpl {
    boolean isLongpressEnabled();

    boolean onTouchEvent(MotionEvent motionEvent);

    void setIsLongpressEnabled(boolean z);

    void setOnDoubleTapListener(GestureDetector$OnDoubleTapListener gestureDetector$OnDoubleTapListener);
}
