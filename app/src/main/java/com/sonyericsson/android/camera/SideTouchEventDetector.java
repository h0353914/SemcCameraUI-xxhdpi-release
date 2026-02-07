package com.sonyericsson.android.camera;

import android.content.Context;
import android.view.MotionEvent;
import com.sonymobile.sidetouchgesturedetector.DynamicAreaFilter;
import com.sonymobile.sidetouchgesturedetector.SideTouchGestureDetector;

/* JADX INFO: loaded from: classes.dex */
public class SideTouchEventDetector {
    private static final boolean mIsZoomEnabled = false;
    private final DynamicAreaFilter mDynamicAreaFilter;
    private final SideTouchEventDetector$OnSideTouchGestureListener mOnSideTouchGestureListener;
    private int mOrientation;
    private final SideTouchGestureDetector mSideTouchGestureDetector;

    static /* synthetic */ SideTouchEventDetector$OnSideTouchGestureListener access$300(SideTouchEventDetector sideTouchEventDetector) {
        return sideTouchEventDetector.mOnSideTouchGestureListener;
    }

    static /* synthetic */ boolean access$600(SideTouchEventDetector sideTouchEventDetector, MotionEvent motionEvent) {
        return sideTouchEventDetector.isInSideTouchValidArea(motionEvent);
    }

    public SideTouchEventDetector(Context context, SideTouchEventDetector$OnSideTouchGestureListener sideTouchEventDetector$OnSideTouchGestureListener) {
        this.mDynamicAreaFilter = new DynamicAreaFilter(context);
        this.mSideTouchGestureDetector = new SideTouchGestureDetector(context, new SideTouchEventDetector$CameraSideTouchGestureListener(this, null));
        this.mOnSideTouchGestureListener = sideTouchEventDetector$OnSideTouchGestureListener;
    }

    public boolean onSideTouchEvent(MotionEvent motionEvent, int i) {
        this.mOrientation = i;
        this.mDynamicAreaFilter.onSideTouchEvent(motionEvent);
        return this.mSideTouchGestureDetector.onSideTouchEvent(motionEvent);
    }

    public void unregister() {
        this.mSideTouchGestureDetector.unregisterSettingsObserver();
        this.mDynamicAreaFilter.unregisterSettingsObserver();
    }

    private boolean isInSideTouchValidArea(MotionEvent motionEvent) {
        if (this.mOrientation == 1) {
            if (motionEvent.getY(motionEvent.getActionIndex()) > this.mDynamicAreaFilter.getValidScreenHeight(motionEvent)) {
                return false;
            }
        }
        return true;
    }
}
