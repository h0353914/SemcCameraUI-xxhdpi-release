package com.sonymobile.sidetouchgesturedetector;

import android.content.Context;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class SideTouchGestureDetector {
    private static final int DEFAULT_DOUBLE_TAP_TIMEOUT = 360;
    private static final int DOUBLE_TAP_MIN_TIME = 30;
    private static final int DOUBLE_TAP_SLOP = 30;
    public static final int INVALID_GESTURE_ID = -1;
    private static final int LONG_PRESS_TIMEOUT = 500;
    private static final int MAXIMUM_FLING_VELOCITY = 8000;
    private static final int MAXIMUM_FLING_VELOCITY_IN_DP = 8000;
    private static final int MINIMUM_FLING_VELOCITY = 50;
    private static final int MINIMUM_FLING_VELOCITY_IN_DP = 50;
    private static final int MSG_LONG_PRESS = 1;
    private static final int MSG_TAP = 2;
    private static final String SETTINGS_KEY_DOUBLE_TAP_TIMEOUT = "somc.side_sense_double_tap_timeout";
    private static final int SOURCE_SIDETOUCH = 536870912;
    private static final int TOUCH_SLOP = 8;
    private static final int TOUCH_SLOP_IN_DP = 14;
    private final Context mContext;
    private SideTouchGestureDetector$DebugListener mDebugListener;
    private DoubleTapInfo mDoubleTapInfo;
    private SideTouchGestureDetector$OnDoubleTapListener mDoubleTapListener;
    private int mDoubleTapMinTime;
    private int mDoubleTapSlopSquare;
    private int mDoubleTapTimeout;
    private int mDoubleTapTimeoutLearning;
    private int mDoubleTapTimeoutReal;
    private SideTouchGestureDetector$DynamicSettings mDynamicSettings;
    private int mGestureIds;
    private Set<SideTouchGestureDetector$Gesture> mGestures;
    private Set<SideTouchGestureDetector$Gesture> mGesturesWaitingPointer;
    private final Handler mHandler;
    private boolean mIsLearningMode;
    private boolean mIsLongpressEnabled;
    private SideTouchGestureDetector$OnGestureListener mListener;
    private int mLongPressTimeout;
    private int mMaximumFlingVelocity;
    private int mMinimumFlingVelocity;
    private int mTouchSlopSquare;
    private VelocityTracker mVelocityTracker;

    static /* synthetic */ Context access$100(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mContext;
    }

    static /* synthetic */ void access$1000(SideTouchGestureDetector sideTouchGestureDetector, SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        sideTouchGestureDetector.moveToWaitingList(sideTouchGestureDetector$Gesture);
    }

    static /* synthetic */ void access$1100(SideTouchGestureDetector sideTouchGestureDetector, SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        sideTouchGestureDetector.removeFromWaitingList(sideTouchGestureDetector$Gesture);
    }

    static /* synthetic */ Handler access$1200(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mHandler;
    }

    static /* synthetic */ void access$1600(SideTouchGestureDetector sideTouchGestureDetector, int i) {
        sideTouchGestureDetector.releaseGestureId(i);
    }

    static /* synthetic */ SideTouchGestureDetector$OnGestureListener access$1700(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mListener;
    }

    static /* synthetic */ int access$1900(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.acquireGestureId();
    }

    static /* synthetic */ SideTouchGestureDetector$DebugListener access$200(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mDebugListener;
    }

    static /* synthetic */ SideTouchGestureDetector$OnDoubleTapListener access$2000(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mDoubleTapListener;
    }

    static /* synthetic */ int access$2100(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mDoubleTapTimeout;
    }

    static /* synthetic */ boolean access$2300(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mIsLongpressEnabled;
    }

    static /* synthetic */ int access$2400(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mLongPressTimeout;
    }

    static /* synthetic */ int access$2600(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mTouchSlopSquare;
    }

    static /* synthetic */ int access$3000(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mDoubleTapTimeoutReal;
    }

    static /* synthetic */ int access$3100(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mDoubleTapMinTime;
    }

    static /* synthetic */ boolean access$3200(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mIsLearningMode;
    }

    static /* synthetic */ DoubleTapInfo access$3300(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mDoubleTapInfo;
    }

    static /* synthetic */ int access$3400(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mDoubleTapSlopSquare;
    }

    static /* synthetic */ int access$3500(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mMaximumFlingVelocity;
    }

    static /* synthetic */ VelocityTracker access$3600(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mVelocityTracker;
    }

    static /* synthetic */ int access$3700(SideTouchGestureDetector sideTouchGestureDetector) {
        return sideTouchGestureDetector.mMinimumFlingVelocity;
    }

    public SideTouchGestureDetector(Context context, SideTouchGestureDetector$OnGestureListener sideTouchGestureDetector$OnGestureListener) {
        this(context, sideTouchGestureDetector$OnGestureListener, null);
    }

    public SideTouchGestureDetector(Context context, SideTouchGestureDetector$OnGestureListener sideTouchGestureDetector$OnGestureListener, Handler handler) {
        this.mLongPressTimeout = 500;
        this.mDoubleTapTimeout = 360;
        this.mDoubleTapMinTime = 30;
        this.mGestures = new HashSet();
        this.mGesturesWaitingPointer = new HashSet();
        this.mGestureIds = 0;
        this.mDoubleTapInfo = new DoubleTapInfo();
        this.mDoubleTapTimeoutLearning = 1100;
        this.mContext = context;
        if (handler != null) {
            this.mHandler = new SideTouchGestureDetector$GestureHandler(this, handler);
        } else {
            this.mHandler = new SideTouchGestureDetector$GestureHandler(this);
        }
        this.mListener = sideTouchGestureDetector$OnGestureListener;
        if (sideTouchGestureDetector$OnGestureListener instanceof SideTouchGestureDetector$OnDoubleTapListener) {
            setOnDoubleTapListener((SideTouchGestureDetector$OnDoubleTapListener) sideTouchGestureDetector$OnGestureListener);
        }
        init(context);
    }

    private void init(Context context) {
        int iDp2px;
        if (this.mListener == null) {
            throw new NullPointerException("OnGestureListener must not be null");
        }
        if (context == null) {
            throw new NullPointerException("Context must not be null");
        }
        this.mIsLongpressEnabled = true;
        this.mDynamicSettings = new SideTouchGestureDetector$DynamicSettings(this);
        int iDp2px2 = dp2px(14.0f);
        if (context.getResources().getConfiguration().isLayoutSizeAtLeast(4)) {
            iDp2px = dp2px(45.0f);
        } else {
            iDp2px = dp2px(30.0f);
        }
        this.mMinimumFlingVelocity = dp2px(50.0f);
        this.mMaximumFlingVelocity = dp2px(8000.0f);
        this.mTouchSlopSquare = iDp2px2 * iDp2px2;
        this.mDoubleTapSlopSquare = iDp2px * iDp2px;
    }

    public void setOnDoubleTapListener(SideTouchGestureDetector$OnDoubleTapListener sideTouchGestureDetector$OnDoubleTapListener) {
        this.mDoubleTapListener = sideTouchGestureDetector$OnDoubleTapListener;
    }

    public void setIsLongpressEnabled(boolean z) {
        this.mIsLongpressEnabled = z;
    }

    public boolean isLongpressEnabled() {
        return this.mIsLongpressEnabled;
    }

    public void registerSettingsObserver() {
        if (this.mDynamicSettings != null) {
            this.mDynamicSettings.registerObserver();
        }
    }

    public void unregisterSettingsObserver() {
        if (this.mDynamicSettings != null) {
            this.mDynamicSettings.unregisterObserver();
        }
    }

    public int getDoubleTapTimeout() {
        return this.mDoubleTapTimeout;
    }

    public void setDebugListener(SideTouchGestureDetector$DebugListener sideTouchGestureDetector$DebugListener) {
        this.mDebugListener = sideTouchGestureDetector$DebugListener;
    }

    public void setLongPressTimeout(int i) {
        this.mLongPressTimeout = i;
    }

    public void setDoubleTapTimeout(int i) {
        this.mDoubleTapTimeout = i;
    }

    public void setDoubleTapMinTime(int i) {
        this.mDoubleTapMinTime = i;
    }

    public void setTouchSlop(float f) {
        int iDp2px = dp2px(f);
        this.mTouchSlopSquare = iDp2px * iDp2px;
    }

    public void setDoubleTapSlop(float f) {
        int iDp2px = dp2px(f);
        this.mDoubleTapSlopSquare = iDp2px * iDp2px;
    }

    public void setMinimumFlingVelocity(float f) {
        this.mMinimumFlingVelocity = dp2px(f);
    }

    public void setMaximumFlingVelocity(float f) {
        this.mMaximumFlingVelocity = dp2px(f);
    }

    public void setLearningMode(boolean z) {
        this.mIsLearningMode = z;
        this.mDoubleTapTimeoutReal = getDoubleTapTimeout();
        setDoubleTapTimeout(this.mDoubleTapTimeoutLearning);
    }

    public void setDoubleTapTimeoutLearning(int i) {
        this.mDoubleTapTimeoutLearning = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean onSideTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (!motionEvent.isFromSource(536870912)) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        switch (motionEvent.getActionMasked()) {
            case 0:
            case 5:
                Iterator<SideTouchGestureDetector$Gesture> it = this.mGesturesWaitingPointer.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().onDownEvent(motionEvent)) {
                            z = true;
                        }
                    }
                }
                if (!z) {
                    Iterator<SideTouchGestureDetector$Gesture> it2 = this.mGestures.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (it2.next().onDownEvent(motionEvent)) {
                                z = true;
                            }
                        }
                    }
                    if (!z) {
                        SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture = new SideTouchGestureDetector$Gesture(this, null);
                        this.mGestures.add(sideTouchGestureDetector$Gesture);
                        sideTouchGestureDetector$Gesture.onDownEvent(motionEvent);
                    }
                }
                return true;
            case 1:
            case 6:
                Iterator<SideTouchGestureDetector$Gesture> it3 = this.mGestures.iterator();
                while (it3.hasNext() && !it3.next().onUpEvent(motionEvent)) {
                }
                return true;
            case 2:
                Iterator<SideTouchGestureDetector$Gesture> it4 = this.mGestures.iterator();
                while (it4.hasNext()) {
                    it4.next().onMoveEvent(motionEvent);
                }
                return true;
            case 3:
                this.mHandler.removeMessages(1);
                this.mHandler.removeMessages(2);
                this.mVelocityTracker.recycle();
                this.mVelocityTracker = null;
                this.mListener.onCancel(motionEvent);
                this.mGestures.addAll(this.mGesturesWaitingPointer);
                this.mGesturesWaitingPointer.clear();
                Iterator<SideTouchGestureDetector$Gesture> it5 = this.mGestures.iterator();
                while (it5.hasNext()) {
                    it5.next().cancel();
                }
                return true;
            case 4:
            default:
                return true;
        }
    }

    private int acquireGestureId() {
        int iLowestOneBit = Integer.lowestOneBit(~this.mGestureIds);
        this.mGestureIds |= iLowestOneBit;
        return Integer.numberOfTrailingZeros(iLowestOneBit);
    }

    private void releaseGestureId(int i) {
        this.mGestureIds = (~(1 << i)) & this.mGestureIds;
    }

    private void moveToWaitingList(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        if (this.mGestures.remove(sideTouchGestureDetector$Gesture)) {
            this.mGesturesWaitingPointer.add(sideTouchGestureDetector$Gesture);
        }
    }

    private void removeFromWaitingList(SideTouchGestureDetector$Gesture sideTouchGestureDetector$Gesture) {
        if (this.mGesturesWaitingPointer.remove(sideTouchGestureDetector$Gesture)) {
            this.mGestures.add(sideTouchGestureDetector$Gesture);
        }
    }

    private int dp2px(float f) {
        return (int) ((f * this.mContext.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
