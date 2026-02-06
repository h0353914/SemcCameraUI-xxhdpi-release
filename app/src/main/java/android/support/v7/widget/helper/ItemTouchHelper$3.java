package android.support.v7.widget.helper;

import android.animation.Animator;
import android.support.v7.widget.RecyclerView$ViewHolder;

class ItemTouchHelper$3 extends ItemTouchHelper$RecoverAnimation {
    final /* synthetic */ ItemTouchHelper this$0;
    final /* synthetic */ RecyclerView$ViewHolder val$prevSelected;
    final /* synthetic */ int val$swipeDir;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ItemTouchHelper$3(ItemTouchHelper itemTouchHelper, RecyclerView$ViewHolder recyclerView$ViewHolder, int i, int i2, float f, float f2, float f3, float f4, int i3, RecyclerView$ViewHolder recyclerView$ViewHolder2) {
        super(recyclerView$ViewHolder, i, i2, f, f2, f3, f4);
        this.this$0 = itemTouchHelper;
        this.val$swipeDir = i3;
        this.val$prevSelected = recyclerView$ViewHolder2;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper$RecoverAnimation, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        if (this.mOverridden) {
            return;
        }
        if (this.val$swipeDir <= 0) {
            this.this$0.mCallback.clearView(this.this$0.mRecyclerView, this.val$prevSelected);
        } else {
            this.this$0.mPendingCleanup.add(this.val$prevSelected.itemView);
            this.mIsPendingCleanup = true;
            if (this.val$swipeDir > 0) {
                this.this$0.postDispatchSwipe(this, this.val$swipeDir);
            }
        }
        if (this.this$0.mOverdrawChild == this.val$prevSelected.itemView) {
            this.this$0.removeChildDrawingOrderCallbackIfNecessary(this.val$prevSelected.itemView);
        }
    }
}
