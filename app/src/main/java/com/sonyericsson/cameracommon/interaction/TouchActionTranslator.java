package com.sonyericsson.cameracommon.interaction;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.GestureDetector$OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public class TouchActionTranslator implements TouchMoveAndStopDetector$TouchStopDetectorListener, TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener, GestureDetector$OnGestureListener {
    private static final TouchActionTranslator$TouchActionListener NULL_LISTENER = new TouchActionTranslator$NullInteractionListener(null);
    public static final String TAG = "TouchActionTranslator";
    private GestureDetector mAndroidGestureDetector;
    private TouchActionTranslator$TouchActionListener mClientListener;
    private Context mContext;
    private TouchActionTranslator$InteractionState mCurrentInteractionState;
    private TouchScaleAndRotateDetector mDoubleTouchScaleAndRotateDetector;
    private boolean mIsAllTouchEventInTargetArea;
    private final int mMargin;
    private TouchMoveAndStopDetector mSingleTouchMoveAndStopDetector;
    private View mTargetView;
    private final int mTouchSlop;

    static /* synthetic */ TouchScaleAndRotateDetector access$1000(TouchActionTranslator touchActionTranslator) {
        return touchActionTranslator.mDoubleTouchScaleAndRotateDetector;
    }

    static /* synthetic */ TouchActionTranslator$TouchActionListener access$200(TouchActionTranslator touchActionTranslator) {
        return touchActionTranslator.mClientListener;
    }

    static /* synthetic */ void access$400(TouchActionTranslator touchActionTranslator, TouchActionTranslator$InteractionState touchActionTranslator$InteractionState) {
        touchActionTranslator.changeTo(touchActionTranslator$InteractionState);
    }

    static /* synthetic */ TouchMoveAndStopDetector access$900(TouchActionTranslator touchActionTranslator) {
        return touchActionTranslator.getSingleTouchMoveAndStopDetector();
    }

    public void setInteractionListener(TouchActionTranslator$TouchActionListener touchActionTranslator$TouchActionListener) {
        if (touchActionTranslator$TouchActionListener != null) {
            this.mClientListener = touchActionTranslator$TouchActionListener;
        } else {
            this.mClientListener = NULL_LISTENER;
        }
    }

    public TouchActionTranslator(Context context, View view) {
        this(context, view, 0);
    }

    public TouchActionTranslator(Context context, View view, int i) {
        this(context, view, i, ViewConfiguration.get(context).getScaledTouchSlop());
    }

    public TouchActionTranslator(Context context, View view, int i, int i2) {
        this.mIsAllTouchEventInTargetArea = true;
        this.mClientListener = NULL_LISTENER;
        this.mCurrentInteractionState = new TouchActionTranslator$Idle(this, null);
        this.mContext = context;
        this.mTargetView = view;
        this.mMargin = i;
        this.mTouchSlop = i2;
        setInteractionListener(null);
        this.mDoubleTouchScaleAndRotateDetector = new TouchScaleAndRotateDetector();
        this.mDoubleTouchScaleAndRotateDetector.setScaleAndRotateDetectorListener(this);
    }

    public synchronized void release() {
        this.mContext = null;
        this.mTargetView = null;
        if (this.mSingleTouchMoveAndStopDetector != null) {
            this.mSingleTouchMoveAndStopDetector.release();
            this.mSingleTouchMoveAndStopDetector = null;
        }
        this.mDoubleTouchScaleAndRotateDetector.release();
        this.mDoubleTouchScaleAndRotateDetector = null;
        this.mAndroidGestureDetector = null;
        this.mClientListener = NULL_LISTENER;
    }

    private synchronized void changeTo(TouchActionTranslator$InteractionState touchActionTranslator$InteractionState) {
        this.mCurrentInteractionState = touchActionTranslator$InteractionState;
    }

    public synchronized boolean onTouchEvent(MotionEvent motionEvent) {
        if (CamLog.VERBOSE) {
            CamLog.d("onTouchEvent() getActionMasked:" + motionEvent.getActionMasked() + ", getPointerCount:" + motionEvent.getPointerCount());
        }
        if (this.mTargetView != null) {
            int i = 0;
            while (true) {
                if (i >= motionEvent.getPointerCount()) {
                    break;
                }
                if (hitTest(this.mTargetView, this.mMargin, (int) motionEvent.getX(i), (int) motionEvent.getY(i))) {
                    this.mIsAllTouchEventInTargetArea = true;
                    i++;
                } else {
                    this.mIsAllTouchEventInTargetArea = false;
                    break;
                }
            }
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                getSingleTouchMoveAndStopDetector().startTouchStopDetection((int) motionEvent.getX(), (int) motionEvent.getY());
                break;
            case 1:
            case 3:
                getSingleTouchMoveAndStopDetector().stopTouchStopDetection();
                break;
            case 2:
                if (1 == motionEvent.getPointerCount()) {
                    getSingleTouchMoveAndStopDetector().updateCurrentPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                }
                break;
        }
        if (motionEvent.getActionMasked() != 1 || this.mIsAllTouchEventInTargetArea) {
            this.mCurrentInteractionState.handleMotionEvent(motionEvent);
        } else {
            cancel();
        }
        getAndroidGestureDetector().onTouchEvent(motionEvent);
        return this.mIsAllTouchEventInTargetArea;
    }

    private boolean hitTest(View view, int i, int i2, int i3) {
        return new Rect(i, i, view.getWidth() - i, view.getHeight() - i).contains(i2, i3);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector$TouchStopDetectorListener
    public synchronized void onSingleTouchMoveDetected(Point point, Point point2, Point point3) {
        this.mCurrentInteractionState.handleSingleTouchMoveEvent(point, point2, point3);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector$TouchStopDetectorListener
    public synchronized void onSingleTouchStopDetected(Point point, Point point2, Point point3) {
        this.mCurrentInteractionState.handleSingleTouchStopEvent(point, point2, point3);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener
    public synchronized void onDoubleTouchScaleDetected(float f, float f2, float f3) {
        this.mCurrentInteractionState.handleTouchScaleEvent(f, f2, f3);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener
    public synchronized void onDoubleTouchRotateDetected(float f, float f2) {
        this.mCurrentInteractionState.handleTouchRotateEvent(f, f2);
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public synchronized boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public synchronized boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.mClientListener.onFling(motionEvent, motionEvent2, f, f2);
        return true;
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public synchronized void onLongPress(MotionEvent motionEvent) {
        this.mClientListener.onLongPress(motionEvent);
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public synchronized boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return true;
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public synchronized void onShowPress(MotionEvent motionEvent) {
        this.mClientListener.onShowPress(motionEvent);
    }

    @Override // android.view.GestureDetector$OnGestureListener
    public synchronized boolean onSingleTapUp(MotionEvent motionEvent) {
        this.mClientListener.onSingleTapUp(motionEvent);
        return true;
    }

    private TouchMoveAndStopDetector getSingleTouchMoveAndStopDetector() {
        if (this.mSingleTouchMoveAndStopDetector == null) {
            this.mSingleTouchMoveAndStopDetector = new TouchMoveAndStopDetector(this.mTouchSlop);
            this.mSingleTouchMoveAndStopDetector.setTouchStopDetectorListener(this);
        }
        return this.mSingleTouchMoveAndStopDetector;
    }

    private GestureDetector getAndroidGestureDetector() {
        if (this.mAndroidGestureDetector == null) {
            this.mAndroidGestureDetector = new GestureDetector(this.mContext, this, new Handler(), true);
        }
        return this.mAndroidGestureDetector;
    }

    public void cancel() {
        changeTo(new TouchActionTranslator$Idle(this, null));
    }
}
