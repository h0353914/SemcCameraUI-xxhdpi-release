package android.support.v13.view;

import android.graphics.Point;
import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnLongClickListener;
import android.view.View$OnTouchListener;

public class DragStartHelper {
    private boolean mDragging;
    private int mLastTouchX;
    private int mLastTouchY;
    private final DragStartHelper$OnDragStartListener mListener;
    private final View$OnLongClickListener mLongClickListener = new DragStartHelper$1(this);
    private final View$OnTouchListener mTouchListener = new DragStartHelper$2(this);
    private final View mView;

    public DragStartHelper(View view, DragStartHelper$OnDragStartListener dragStartHelper$OnDragStartListener) {
        this.mView = view;
        this.mListener = dragStartHelper$OnDragStartListener;
    }

    public void attach() {
        this.mView.setOnLongClickListener(this.mLongClickListener);
        this.mView.setOnTouchListener(this.mTouchListener);
    }

    public void detach() {
        this.mView.setOnLongClickListener(null);
        this.mView.setOnTouchListener(null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                this.mLastTouchX = x;
                this.mLastTouchY = y;
                return false;
            case 1:
            case 3:
                this.mDragging = false;
                return false;
            case 2:
                if (MotionEventCompat.isFromSource(motionEvent, 8194) && (motionEvent.getButtonState() & 1) != 0 && !this.mDragging && (this.mLastTouchX != x || this.mLastTouchY != y)) {
                    this.mLastTouchX = x;
                    this.mLastTouchY = y;
                    this.mDragging = this.mListener.onDragStart(view, this);
                    return this.mDragging;
                }
                return false;
            default:
                return false;
        }
    }

    public boolean onLongClick(View view) {
        return this.mListener.onDragStart(view, this);
    }

    public void getTouchPosition(Point point) {
        point.set(this.mLastTouchX, this.mLastTouchY);
    }
}
