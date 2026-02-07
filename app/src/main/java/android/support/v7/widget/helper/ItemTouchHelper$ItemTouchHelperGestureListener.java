package android.support.v7.widget.helper;

import android.support.v7.widget.RecyclerView$ViewHolder;
import android.view.GestureDetector$SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ItemTouchHelper$ItemTouchHelperGestureListener extends GestureDetector$SimpleOnGestureListener {
    private boolean mShouldReactToLongPress = true;
    final /* synthetic */ ItemTouchHelper this$0;

    @Override // android.view.GestureDetector$SimpleOnGestureListener, android.view.GestureDetector$OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    ItemTouchHelper$ItemTouchHelperGestureListener(ItemTouchHelper itemTouchHelper) {
        this.this$0 = itemTouchHelper;
    }

    void doNotReactToLongPress() {
        this.mShouldReactToLongPress = false;
    }

    @Override // android.view.GestureDetector$SimpleOnGestureListener, android.view.GestureDetector$OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        View viewFindChildView;
        RecyclerView$ViewHolder childViewHolder;
        if (this.mShouldReactToLongPress && (viewFindChildView = this.this$0.findChildView(motionEvent)) != null && (childViewHolder = this.this$0.mRecyclerView.getChildViewHolder(viewFindChildView)) != null && this.this$0.mCallback.hasDragFlag(this.this$0.mRecyclerView, childViewHolder) && motionEvent.getPointerId(0) == this.this$0.mActivePointerId) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.this$0.mActivePointerId);
            float x = motionEvent.getX(iFindPointerIndex);
            float y = motionEvent.getY(iFindPointerIndex);
            this.this$0.mInitialTouchX = x;
            this.this$0.mInitialTouchY = y;
            ItemTouchHelper itemTouchHelper = this.this$0;
            this.this$0.mDy = 0.0f;
            itemTouchHelper.mDx = 0.0f;
            if (this.this$0.mCallback.isLongPressDragEnabled()) {
                this.this$0.select(childViewHolder, 2);
            }
        }
    }
}
