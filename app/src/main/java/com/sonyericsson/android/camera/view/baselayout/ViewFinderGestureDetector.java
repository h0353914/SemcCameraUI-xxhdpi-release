package com.sonyericsson.android.camera.view.baselayout;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.GestureDetector$OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ViewFinderGestureDetector {
    private static final String TAG = "ViewFinderGestureDetector";
    private static final boolean TRACE = false;
    private MotionEvent mDragStartEvent;
    private final GestureDetector mGestureDetector;
    private ViewFinderGestureDetector$OnViewFinderGestureDetectorListener mListener;
    private final int mModeSwitchDragFinishDistanceForFling;
    private final float mStartDraggingMovementSlop;
    private final float mStartDraggingTimeSlop;
    private MotionEvent mTriggerEvent;
    private final Rect mGlobalVisibleRect = new Rect();
    private final GestureDetector$OnGestureListener mOnGestureListener = new ViewFinderGestureDetector$1(this);
    private final List<View> mExclusiveViews = new ArrayList();
    private ViewFinderGestureDetector$Direction mDragDirection = ViewFinderGestureDetector$Direction.NONE;
    private boolean mIsExclusive = false;
    private int mAcceptedDragDirectionFlags = ViewFinderGestureDetector$Direction.NONE.flag;
    private boolean mIsStartDraggingSlopEnabled = true;

    static /* synthetic */ boolean access$100(ViewFinderGestureDetector viewFinderGestureDetector) {
        return viewFinderGestureDetector.isDragging();
    }

    static /* synthetic */ void access$1000(ViewFinderGestureDetector viewFinderGestureDetector, MotionEvent motionEvent, MotionEvent motionEvent2) {
        viewFinderGestureDetector.notifyOnDragging(motionEvent, motionEvent2);
    }

    static /* synthetic */ int access$1100(ViewFinderGestureDetector viewFinderGestureDetector) {
        return viewFinderGestureDetector.mModeSwitchDragFinishDistanceForFling;
    }

    static /* synthetic */ int access$1200(Point point, Point point2) {
        return computeDistance(point, point2);
    }

    static /* synthetic */ void access$1300(ViewFinderGestureDetector viewFinderGestureDetector, MotionEvent motionEvent, MotionEvent motionEvent2, ViewFinderGestureDetector$FinishReason viewFinderGestureDetector$FinishReason) {
        viewFinderGestureDetector.notifyOnFinishDragging(motionEvent, motionEvent2, viewFinderGestureDetector$FinishReason);
    }

    static /* synthetic */ ViewFinderGestureDetector$Direction access$200(ViewFinderGestureDetector viewFinderGestureDetector, float f, float f2) {
        return viewFinderGestureDetector.computeDraggingDirection(f, f2);
    }

    static /* synthetic */ boolean access$300(ViewFinderGestureDetector viewFinderGestureDetector, ViewFinderGestureDetector$Direction viewFinderGestureDetector$Direction, MotionEvent motionEvent) {
        return viewFinderGestureDetector.isStartDraggingAccepted(viewFinderGestureDetector$Direction, motionEvent);
    }

    static /* synthetic */ void access$400(ViewFinderGestureDetector viewFinderGestureDetector, MotionEvent motionEvent) {
        viewFinderGestureDetector.resetDragStartEvent(motionEvent);
    }

    static /* synthetic */ ViewFinderGestureDetector$Direction access$500(ViewFinderGestureDetector viewFinderGestureDetector) {
        return viewFinderGestureDetector.mDragDirection;
    }

    static /* synthetic */ ViewFinderGestureDetector$Direction access$502(ViewFinderGestureDetector viewFinderGestureDetector, ViewFinderGestureDetector$Direction viewFinderGestureDetector$Direction) {
        viewFinderGestureDetector.mDragDirection = viewFinderGestureDetector$Direction;
        return viewFinderGestureDetector$Direction;
    }

    static /* synthetic */ boolean access$600(ViewFinderGestureDetector viewFinderGestureDetector, ViewFinderGestureDetector$Direction viewFinderGestureDetector$Direction) {
        return viewFinderGestureDetector.isDraggingAccepted(viewFinderGestureDetector$Direction);
    }

    static /* synthetic */ MotionEvent access$700(ViewFinderGestureDetector viewFinderGestureDetector) {
        return viewFinderGestureDetector.mTriggerEvent;
    }

    static /* synthetic */ MotionEvent access$800(ViewFinderGestureDetector viewFinderGestureDetector) {
        return viewFinderGestureDetector.mDragStartEvent;
    }

    static /* synthetic */ void access$900(ViewFinderGestureDetector viewFinderGestureDetector, MotionEvent motionEvent, MotionEvent motionEvent2) {
        viewFinderGestureDetector.notifyOnStartDragging(motionEvent, motionEvent2);
    }

    private void trace(String str) {
        CamLog.e(str);
    }

    public ViewFinderGestureDetector(Context context) {
        this.mGestureDetector = new GestureDetector(context, this.mOnGestureListener);
        this.mStartDraggingTimeSlop = context.getResources().getInteger(2131361813);
        this.mStartDraggingMovementSlop = context.getResources().getDimensionPixelSize(2131165735);
        this.mModeSwitchDragFinishDistanceForFling = context.getResources().getDimensionPixelSize(2131165330);
    }

    public void setStartDraggingSlopEnabled(boolean z) {
        this.mIsStartDraggingSlopEnabled = z;
    }

    public void setAcceptDragDirection(ViewFinderGestureDetector$Direction... viewFinderGestureDetector$DirectionArr) {
        this.mAcceptedDragDirectionFlags = 0;
        for (ViewFinderGestureDetector$Direction viewFinderGestureDetector$Direction : viewFinderGestureDetector$DirectionArr) {
            this.mAcceptedDragDirectionFlags = viewFinderGestureDetector$Direction.flag | this.mAcceptedDragDirectionFlags;
        }
        if (ViewFinderGestureDetector$Direction.access$000(this.mDragDirection, this.mAcceptedDragDirectionFlags)) {
            return;
        }
        this.mDragDirection = ViewFinderGestureDetector$Direction.NONE;
    }

    public void setOnGestureDetectorListener(ViewFinderGestureDetector$OnViewFinderGestureDetectorListener viewFinderGestureDetector$OnViewFinderGestureDetectorListener) {
        this.mListener = viewFinderGestureDetector$OnViewFinderGestureDetectorListener;
    }

    public void addExclusiveView(View view) {
        this.mExclusiveViews.add(view);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (this.mListener != null) {
                this.mListener.onDown(motionEvent);
            }
            this.mDragDirection = ViewFinderGestureDetector$Direction.NONE;
            resetTriggerEvent(motionEvent);
            if (isExclusiveViewEvent(motionEvent)) {
                this.mIsExclusive = true;
                return false;
            }
        }
        if (this.mIsExclusive) {
            int action = motionEvent.getAction();
            if (action != 1 && action != 3) {
                return false;
            }
            this.mIsExclusive = false;
            resetTriggerEvent(null);
            resetDragStartEvent(null);
            return false;
        }
        if (!isEnabled()) {
            return false;
        }
        if (motionEvent.getPointerCount() > 1) {
            if (isDraggingAccepted(this.mDragDirection)) {
                notifyOnFinishDragging(this.mDragStartEvent, motionEvent, ViewFinderGestureDetector$FinishReason.CANCEL);
            }
            this.mDragDirection = ViewFinderGestureDetector$Direction.NONE;
            return false;
        }
        if (!isAccepted(motionEvent)) {
            return false;
        }
        boolean zOnTouchEvent = this.mGestureDetector.onTouchEvent(motionEvent);
        int action2 = motionEvent.getAction();
        if (action2 == 1) {
            if (isDraggingAccepted(this.mDragDirection)) {
                notifyOnFinishDragging(this.mTriggerEvent, motionEvent, ViewFinderGestureDetector$FinishReason.UP);
            }
            this.mDragDirection = ViewFinderGestureDetector$Direction.NONE;
            resetTriggerEvent(null);
            resetDragStartEvent(null);
        } else if (action2 == 3) {
            if (isDraggingAccepted(this.mDragDirection)) {
                notifyOnFinishDragging(this.mTriggerEvent, motionEvent, ViewFinderGestureDetector$FinishReason.CANCEL);
            }
            this.mDragDirection = ViewFinderGestureDetector$Direction.NONE;
            resetTriggerEvent(null);
            resetDragStartEvent(null);
        }
        return zOnTouchEvent;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mIsExclusive = false;
        if (!isEnabled()) {
            resetTriggerEvent(null);
            resetDragStartEvent(null);
            return false;
        }
        if (!isAccepted(motionEvent)) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.mDragDirection = ViewFinderGestureDetector$Direction.NONE;
            resetTriggerEvent(motionEvent);
        }
        boolean zOnTouchEvent = this.mGestureDetector.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action != 3) {
            switch (action) {
            }
            return false;
        }
        if (isDraggingAccepted(this.mDragDirection)) {
            notifyOnFinishDragging(this.mTriggerEvent, motionEvent, ViewFinderGestureDetector$FinishReason.UP);
        }
        this.mDragDirection = ViewFinderGestureDetector$Direction.NONE;
        resetTriggerEvent(null);
        resetDragStartEvent(null);
        return true;
    }

    private boolean isDragging() {
        return this.mDragDirection != ViewFinderGestureDetector$Direction.NONE;
    }

    private boolean isEnabled() {
        return this.mAcceptedDragDirectionFlags != ViewFinderGestureDetector$Direction.NONE.flag;
    }

    private boolean isStartDraggingAccepted(ViewFinderGestureDetector$Direction viewFinderGestureDetector$Direction, MotionEvent motionEvent) {
        if (this.mTriggerEvent == null) {
            return false;
        }
        if (!this.mIsStartDraggingSlopEnabled) {
            return true;
        }
        switch (viewFinderGestureDetector$Direction) {
            case HORIZONTAL:
                if (Math.abs(this.mTriggerEvent.getX() - motionEvent.getX()) < this.mStartDraggingMovementSlop) {
                    return false;
                }
                break;
            case VERTICAL:
                if (Math.abs(this.mTriggerEvent.getY() - motionEvent.getY()) < this.mStartDraggingMovementSlop) {
                    return false;
                }
                break;
            default:
                return false;
        }
        return ((float) (motionEvent.getEventTime() - this.mTriggerEvent.getDownTime())) >= this.mStartDraggingTimeSlop;
    }

    private boolean isDraggingAccepted(ViewFinderGestureDetector$Direction viewFinderGestureDetector$Direction) {
        return viewFinderGestureDetector$Direction != ViewFinderGestureDetector$Direction.NONE && (this.mAcceptedDragDirectionFlags & viewFinderGestureDetector$Direction.flag) == viewFinderGestureDetector$Direction.flag;
    }

    private boolean isAccepted(MotionEvent motionEvent) {
        return this.mTriggerEvent != null && this.mTriggerEvent.getActionIndex() == motionEvent.getActionIndex();
    }

    private boolean isExclusiveViewEvent(MotionEvent motionEvent) {
        Iterator<View> it = this.mExclusiveViews.iterator();
        while (it.hasNext()) {
            if (it.next().getGlobalVisibleRect(this.mGlobalVisibleRect) && this.mGlobalVisibleRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return true;
            }
        }
        return false;
    }

    private void resetTriggerEvent(MotionEvent motionEvent) {
        if (this.mTriggerEvent != null) {
            this.mTriggerEvent.recycle();
            this.mTriggerEvent = null;
        }
        if (motionEvent != null) {
            this.mTriggerEvent = MotionEvent.obtain(motionEvent);
        }
    }

    private void resetDragStartEvent(MotionEvent motionEvent) {
        if (this.mDragStartEvent != null) {
            this.mDragStartEvent.recycle();
            this.mDragStartEvent = null;
        }
        if (motionEvent != null) {
            this.mDragStartEvent = MotionEvent.obtain(motionEvent);
        }
    }

    private ViewFinderGestureDetector$Direction computeDraggingDirection(float f, float f2) {
        if (Math.abs(f) > Math.abs(f2)) {
            return ViewFinderGestureDetector$Direction.HORIZONTAL;
        }
        if (Math.abs(f) < Math.abs(f2)) {
            return ViewFinderGestureDetector$Direction.VERTICAL;
        }
        return ViewFinderGestureDetector$Direction.NONE;
    }

    private static int computeDistance(Point point, Point point2) {
        int iAbs = Math.abs(point2.x - point.x);
        int iAbs2 = Math.abs(point2.y - point.y);
        return iAbs > iAbs2 ? iAbs : iAbs2;
    }

    private void notifyOnDragging(MotionEvent motionEvent, MotionEvent motionEvent2) {
        if (this.mListener == null || motionEvent == null || motionEvent2 == null) {
            return;
        }
        this.mListener.onDragging(motionEvent, motionEvent2);
    }

    private void notifyOnStartDragging(MotionEvent motionEvent, MotionEvent motionEvent2) {
        if (this.mListener == null || motionEvent == null || motionEvent2 == null) {
            return;
        }
        this.mListener.onStartDragging(motionEvent, motionEvent2);
    }

    private void notifyOnFinishDragging(MotionEvent motionEvent, MotionEvent motionEvent2, ViewFinderGestureDetector$FinishReason viewFinderGestureDetector$FinishReason) {
        if (this.mListener == null || motionEvent == null || motionEvent2 == null) {
            return;
        }
        this.mListener.onFinishDragging(motionEvent, motionEvent2, viewFinderGestureDetector$FinishReason);
    }
}
