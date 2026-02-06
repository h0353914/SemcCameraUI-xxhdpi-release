package com.sonyericsson.android.camera.controller;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.baselayout.ViewFinderGestureDetector$FinishReason;
import com.sonyericsson.android.camera.view.baselayout.ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;

public abstract class AbstractDraggingEventHandler implements ViewFinderGestureDetector$OnViewFinderGestureDetectorListener {
    private static final String TAG = "AbstractDraggingEventHandler";
    private final int mCameraSwitchDragFinishDistance;
    private int mDragStartMargin;
    private final int mModeChangeDragFinishDistance;
    private boolean mIsDragging = false;
    private AbstractDraggingEventHandler$Direction mDirection = AbstractDraggingEventHandler$Direction.NONE;

    protected abstract boolean canDragging();

    protected abstract void sendCancelEvent(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction);

    protected abstract void sendFinishEvent(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction);

    protected abstract void sendProgressEvent(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction, int i, float f);

    protected abstract boolean sendStartEvent(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction);

    protected abstract void sendTouchDownEvent(MotionEvent motionEvent);

    public AbstractDraggingEventHandler(Context context, int i, int i2) {
        this.mModeChangeDragFinishDistance = i;
        this.mCameraSwitchDragFinishDistance = i2;
        this.mDragStartMargin = context.getResources().getDimensionPixelSize(2131165318);
    }

    private boolean startDragging(Point point, Point point2) {
        if (point.y <= this.mDragStartMargin || this.mIsDragging || !canDragging()) {
            return false;
        }
        this.mDirection = computeDirection(point, point2);
        this.mIsDragging = sendStartEvent(this.mDirection);
        return this.mIsDragging;
    }

    private boolean finishDragging(Point point, Point point2, ViewFinderGestureDetector$FinishReason viewFinderGestureDetector$FinishReason) {
        if (!this.mIsDragging) {
            return false;
        }
        this.mIsDragging = false;
        if (computeProgress(this.mDirection, point, point2) >= 1.0f || (viewFinderGestureDetector$FinishReason == ViewFinderGestureDetector$FinishReason.FLING && this.mDirection != AbstractDraggingEventHandler$Direction.RIGHT)) {
            sendFinishEvent(this.mDirection);
            return true;
        }
        sendCancelEvent(this.mDirection);
        return true;
    }

    private boolean dragging(Point point, Point point2) {
        if (!this.mIsDragging) {
            return false;
        }
        float fComputeProgress = computeProgress(this.mDirection, point, point2);
        int iComputeDistance = computeDistance(this.mDirection, point, point2);
        AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$DirectionComputeDirection = computeDirection(point, point2);
        if (acceptNewDirection(abstractDraggingEventHandler$DirectionComputeDirection)) {
            this.mDirection = abstractDraggingEventHandler$DirectionComputeDirection;
        }
        if (fComputeProgress < 1.0f) {
            sendProgressEvent(this.mDirection, iComputeDistance, fComputeProgress);
            return true;
        }
        if (this.mDirection == AbstractDraggingEventHandler$Direction.LEFT) {
            return true;
        }
        finishDragging(point, point2, ViewFinderGestureDetector$FinishReason.UP);
        return true;
    }

    private float computeProgress(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction, Point point, Point point2) {
        if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.UP || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.DOWN) {
            return Math.abs(computeDistance(abstractDraggingEventHandler$Direction, point, point2)) / this.mModeChangeDragFinishDistance;
        }
        return Math.abs(computeDistance(abstractDraggingEventHandler$Direction, point, point2)) / this.mCameraSwitchDragFinishDistance;
    }

    private int computeDistance(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction, Point point, Point point2) {
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.UP || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.DOWN) {
                return point2.x - point.x;
            }
            if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.LEFT || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.RIGHT) {
                return point.y - point2.y;
            }
            return 0;
        }
        if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.UP || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.DOWN) {
            return point.y - point2.y;
        }
        if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.LEFT || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.RIGHT) {
            return point.x - point2.x;
        }
        return 0;
    }

    private AbstractDraggingEventHandler$Direction computeDirection(Point point, Point point2) {
        AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction = AbstractDraggingEventHandler$Direction.NONE;
        int iAtan2 = (int) ((Math.atan2(point.x - point2.x, point.y - point2.y) * 180.0d) / 3.141592653589793d);
        if (CamLog.VERBOSE) {
            CamLog.d("dragRotation = " + iAtan2);
        }
        if ((iAtan2 < 45 && iAtan2 > -45) || ((iAtan2 > 135 && iAtan2 <= 180) || (iAtan2 < -135 && iAtan2 >= -180))) {
            if (CamLog.VERBOSE) {
                CamLog.d("VERTICAL dragrotation = " + iAtan2);
            }
            if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
                if (point.y > point2.y) {
                    return AbstractDraggingEventHandler$Direction.LEFT;
                }
                return point.y < point2.y ? AbstractDraggingEventHandler$Direction.RIGHT : abstractDraggingEventHandler$Direction;
            }
            if (point.y > point2.y) {
                return AbstractDraggingEventHandler$Direction.DOWN;
            }
            return point.y < point2.y ? AbstractDraggingEventHandler$Direction.UP : abstractDraggingEventHandler$Direction;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("HORIZONTAL dragrotation = " + iAtan2);
        }
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            if (point.x > point2.x) {
                return AbstractDraggingEventHandler$Direction.UP;
            }
            return point.x < point2.x ? AbstractDraggingEventHandler$Direction.DOWN : abstractDraggingEventHandler$Direction;
        }
        if (point.x > point2.x) {
            return AbstractDraggingEventHandler$Direction.LEFT;
        }
        return point.x < point2.x ? AbstractDraggingEventHandler$Direction.RIGHT : abstractDraggingEventHandler$Direction;
    }

    private boolean acceptNewDirection(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction) {
        if (this.mDirection == AbstractDraggingEventHandler$Direction.UP || this.mDirection == AbstractDraggingEventHandler$Direction.DOWN) {
            return abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.UP || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.DOWN;
        }
        if (this.mDirection == AbstractDraggingEventHandler$Direction.RIGHT || this.mDirection == AbstractDraggingEventHandler$Direction.LEFT) {
            return abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.RIGHT || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.LEFT;
        }
        return false;
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.ViewFinderGestureDetector$OnViewFinderGestureDetectorListener
    public void onDown(MotionEvent motionEvent) {
        sendTouchDownEvent(motionEvent);
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.ViewFinderGestureDetector$OnViewFinderGestureDetectorListener
    public void onDragging(MotionEvent motionEvent, MotionEvent motionEvent2) {
        Point point = new Point((int) motionEvent2.getX(), (int) motionEvent2.getY());
        Point point2 = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
        if (CamLog.VERBOSE) {
            CamLog.e("onDragging() E start:" + point2 + " end:" + point + " isDragging:" + this.mIsDragging + " direction:" + this.mDirection.name());
        }
        boolean zDragging = dragging(point2, point);
        if (CamLog.VERBOSE) {
            CamLog.e("onDragging() X handled:" + zDragging + " isDragging:" + this.mIsDragging + " direction:" + this.mDirection.name());
        }
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.ViewFinderGestureDetector$OnViewFinderGestureDetectorListener
    public void onStartDragging(MotionEvent motionEvent, MotionEvent motionEvent2) {
        Point point = new Point((int) motionEvent2.getX(), (int) motionEvent2.getY());
        Point point2 = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
        if (CamLog.VERBOSE) {
            CamLog.e("onStartDragging() E start:" + point2.y + " end:" + point + " isDragging:" + this.mIsDragging + " direction:" + this.mDirection.name());
        }
        boolean zStartDragging = startDragging(point2, point);
        if (CamLog.VERBOSE) {
            CamLog.e("onStartDragging() X handled:" + zStartDragging + " isDragging:" + this.mIsDragging + " direction:" + this.mDirection.name());
        }
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.ViewFinderGestureDetector$OnViewFinderGestureDetectorListener
    public void onFinishDragging(MotionEvent motionEvent, MotionEvent motionEvent2, ViewFinderGestureDetector$FinishReason viewFinderGestureDetector$FinishReason) {
        Point point = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
        Point point2 = new Point((int) motionEvent2.getX(), (int) motionEvent2.getY());
        if (CamLog.VERBOSE) {
            CamLog.e("onFinishDragging() E start:" + point2 + " end:" + point + " reason:" + viewFinderGestureDetector$FinishReason.name() + " isDragging:" + this.mIsDragging + " direction:" + this.mDirection.name());
        }
        boolean zFinishDragging = finishDragging(point2, point, viewFinderGestureDetector$FinishReason);
        if (CamLog.VERBOSE) {
            CamLog.d("onFinishDragging() X handled:" + zFinishDragging);
        }
    }
}
