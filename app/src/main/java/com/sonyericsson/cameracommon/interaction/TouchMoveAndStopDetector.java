package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.os.Handler;
import java.util.Timer;

public class TouchMoveAndStopDetector {
    private static final float DIRECTION_TOLERANCE = 1.0471976f;
    public static final String TAG = "TouchMoveAndStopDetector";
    private TouchMoveAndStopDetector$TouchStopDetectorListener mListener;
    private final int mTouchSlop;
    private Timer mTouchStopDetectorTimer;
    private TouchMoveAndStopDetector$TouchStopDetectorTimerTask mTouchStopDetectorTimerTask;
    private int TOUCH_STOP_DETECTION_TIMER_INTERVAL = 200;
    private Handler mUiThreadHandler = new Handler();
    private Point mDownPos = new Point(0, 0);
    private Point mTouchSlopAreaCenterPos = new Point(0, 0);
    private Point mCurrentTouchPos = new Point(0, 0);
    private Point mPreviousTouchPos = new Point(0, 0);
    private Point mLatestCheckedPos = new Point(0, 0);
    private Point mLatestCheckedTrackVec = new Point(0, 0);
    private boolean mIsFingerAlreadyMoved = false;

    static /* synthetic */ Point access$100(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mCurrentTouchPos;
    }

    static /* synthetic */ Point access$1000(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mDownPos;
    }

    static /* synthetic */ Point access$200(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mLatestCheckedPos;
    }

    static /* synthetic */ Point access$300(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mLatestCheckedTrackVec;
    }

    static /* synthetic */ void access$400(TouchMoveAndStopDetector touchMoveAndStopDetector, int i, int i2, Point point) {
        touchMoveAndStopDetector.updateLastCheckedParameters(i, i2, point);
    }

    static /* synthetic */ boolean access$500(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mIsFingerAlreadyMoved;
    }

    static /* synthetic */ void access$600(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        touchMoveAndStopDetector.onTouchStopDetected();
    }

    static /* synthetic */ int access$700(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mTouchSlop;
    }

    static /* synthetic */ TouchMoveAndStopDetector$TouchStopDetectorListener access$800(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mListener;
    }

    static /* synthetic */ Point access$900(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        return touchMoveAndStopDetector.mPreviousTouchPos;
    }

    public TouchMoveAndStopDetector(int i) {
        this.mTouchSlop = i;
    }

    void release() {
        killTimer();
        this.mListener = null;
    }

    public void setTouchStopDetectorListener(TouchMoveAndStopDetector$TouchStopDetectorListener touchMoveAndStopDetector$TouchStopDetectorListener) {
        this.mListener = touchMoveAndStopDetector$TouchStopDetectorListener;
    }

    public synchronized void startTouchStopDetection(int i, int i2) {
        this.mDownPos.set(i, i2);
        this.mPreviousTouchPos.set(i, i2);
        this.mTouchSlopAreaCenterPos.set(i, i2);
        this.mIsFingerAlreadyMoved = false;
        killTimer();
        this.mTouchStopDetectorTimer = new Timer(true);
        this.mTouchStopDetectorTimerTask = new TouchMoveAndStopDetector$TouchStopDetectorTimerTask(this, null);
        this.mTouchStopDetectorTimer.scheduleAtFixedRate(this.mTouchStopDetectorTimerTask, this.TOUCH_STOP_DETECTION_TIMER_INTERVAL, this.TOUCH_STOP_DETECTION_TIMER_INTERVAL);
    }

    public void updateCurrentPosition(int i, int i2) {
        this.mPreviousTouchPos.set(this.mCurrentTouchPos.x, this.mCurrentTouchPos.y);
        this.mCurrentTouchPos.set(i, i2);
        int i3 = this.mCurrentTouchPos.x - this.mTouchSlopAreaCenterPos.x;
        int i4 = this.mCurrentTouchPos.y - this.mTouchSlopAreaCenterPos.y;
        if (this.mTouchSlop * this.mTouchSlop < (i3 * i3) + (i4 * i4)) {
            this.mIsFingerAlreadyMoved = true;
            if (this.mListener != null) {
                this.mListener.onSingleTouchMoveDetected(this.mCurrentTouchPos, this.mPreviousTouchPos, this.mDownPos);
            }
        }
    }

    public void updateCurrentAndLastPosition(int i, int i2) {
        this.mPreviousTouchPos.set(i, i2);
        this.mCurrentTouchPos.set(i, i2);
    }

    public synchronized void stopTouchStopDetection() {
        killTimer();
        this.mCurrentTouchPos.set(0, 0);
        this.mPreviousTouchPos.set(0, 0);
        this.mLatestCheckedPos.set(0, 0);
        this.mLatestCheckedTrackVec.set(0, 0);
    }

    private void killTimer() {
        if (this.mTouchStopDetectorTimer != null) {
            this.mTouchStopDetectorTimer.cancel();
            this.mTouchStopDetectorTimer.purge();
            this.mTouchStopDetectorTimer = null;
        }
        if (this.mTouchStopDetectorTimerTask != null) {
            this.mTouchStopDetectorTimerTask.cancel();
            this.mTouchStopDetectorTimerTask = null;
        }
    }

    private void updateLastCheckedParameters(int i, int i2, Point point) {
        this.mLatestCheckedPos.set(i, i2);
        this.mLatestCheckedTrackVec.set(point.x, point.y);
    }

    private void onTouchStopDetected() {
        this.mIsFingerAlreadyMoved = false;
        this.mTouchSlopAreaCenterPos.set(this.mCurrentTouchPos.x, this.mCurrentTouchPos.y);
        this.mUiThreadHandler.post(new TouchMoveAndStopDetector$1(this));
    }
}
