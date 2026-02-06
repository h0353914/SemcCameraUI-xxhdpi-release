package android.support.v7.widget.helper;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView$OnItemTouchListener;
import android.support.v7.widget.RecyclerView$ViewHolder;
import android.view.MotionEvent;

class ItemTouchHelper$2 implements RecyclerView$OnItemTouchListener {
    final /* synthetic */ ItemTouchHelper this$0;

    ItemTouchHelper$2(ItemTouchHelper itemTouchHelper) {
        this.this$0 = itemTouchHelper;
    }

    @Override // android.support.v7.widget.RecyclerView$OnItemTouchListener
    public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        int iFindPointerIndex;
        ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimationFindAnimation;
        this.this$0.mGestureDetector.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.this$0.mActivePointerId = motionEvent.getPointerId(0);
            this.this$0.mInitialTouchX = motionEvent.getX();
            this.this$0.mInitialTouchY = motionEvent.getY();
            this.this$0.obtainVelocityTracker();
            if (this.this$0.mSelected == null && (itemTouchHelper$RecoverAnimationFindAnimation = this.this$0.findAnimation(motionEvent)) != null) {
                this.this$0.mInitialTouchX -= itemTouchHelper$RecoverAnimationFindAnimation.mX;
                this.this$0.mInitialTouchY -= itemTouchHelper$RecoverAnimationFindAnimation.mY;
                this.this$0.endRecoverAnimation(itemTouchHelper$RecoverAnimationFindAnimation.mViewHolder, true);
                if (this.this$0.mPendingCleanup.remove(itemTouchHelper$RecoverAnimationFindAnimation.mViewHolder.itemView)) {
                    this.this$0.mCallback.clearView(this.this$0.mRecyclerView, itemTouchHelper$RecoverAnimationFindAnimation.mViewHolder);
                }
                this.this$0.select(itemTouchHelper$RecoverAnimationFindAnimation.mViewHolder, itemTouchHelper$RecoverAnimationFindAnimation.mActionState);
                this.this$0.updateDxDy(motionEvent, this.this$0.mSelectedFlags, 0);
            }
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.this$0.mActivePointerId = -1;
            this.this$0.select(null, 0);
        } else if (this.this$0.mActivePointerId != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(this.this$0.mActivePointerId)) >= 0) {
            this.this$0.checkSelectForSwipe(actionMasked, motionEvent, iFindPointerIndex);
        }
        if (this.this$0.mVelocityTracker != null) {
            this.this$0.mVelocityTracker.addMovement(motionEvent);
        }
        return this.this$0.mSelected != null;
    }

    @Override // android.support.v7.widget.RecyclerView$OnItemTouchListener
    public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        this.this$0.mGestureDetector.onTouchEvent(motionEvent);
        if (this.this$0.mVelocityTracker != null) {
            this.this$0.mVelocityTracker.addMovement(motionEvent);
        }
        if (this.this$0.mActivePointerId == -1) {
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        int iFindPointerIndex = motionEvent.findPointerIndex(this.this$0.mActivePointerId);
        if (iFindPointerIndex >= 0) {
            this.this$0.checkSelectForSwipe(actionMasked, motionEvent, iFindPointerIndex);
        }
        RecyclerView$ViewHolder recyclerView$ViewHolder = this.this$0.mSelected;
        if (recyclerView$ViewHolder == null) {
            return;
        }
        if (actionMasked != 6) {
            switch (actionMasked) {
                case 1:
                    break;
                case 2:
                    if (iFindPointerIndex >= 0) {
                        this.this$0.updateDxDy(motionEvent, this.this$0.mSelectedFlags, iFindPointerIndex);
                        this.this$0.moveIfNecessary(recyclerView$ViewHolder);
                        this.this$0.mRecyclerView.removeCallbacks(this.this$0.mScrollRunnable);
                        this.this$0.mScrollRunnable.run();
                        this.this$0.mRecyclerView.invalidate();
                        return;
                    }
                    return;
                case 3:
                    if (this.this$0.mVelocityTracker != null) {
                        this.this$0.mVelocityTracker.clear();
                    }
                    break;
                default:
                    return;
            }
            this.this$0.select(null, 0);
            this.this$0.mActivePointerId = -1;
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.this$0.mActivePointerId) {
            this.this$0.mActivePointerId = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
            this.this$0.updateDxDy(motionEvent, this.this$0.mSelectedFlags, actionIndex);
        }
    }

    @Override // android.support.v7.widget.RecyclerView$OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            this.this$0.select(null, 0);
        }
    }
}
