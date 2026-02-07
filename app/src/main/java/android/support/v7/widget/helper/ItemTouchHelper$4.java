package android.support.v7.widget.helper;

import android.support.v7.widget.RecyclerView$ItemAnimator;

/* JADX INFO: loaded from: classes.dex */
class ItemTouchHelper$4 implements Runnable {
    final /* synthetic */ ItemTouchHelper this$0;
    final /* synthetic */ ItemTouchHelper$RecoverAnimation val$anim;
    final /* synthetic */ int val$swipeDir;

    ItemTouchHelper$4(ItemTouchHelper itemTouchHelper, ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation, int i) {
        this.this$0 = itemTouchHelper;
        this.val$anim = itemTouchHelper$RecoverAnimation;
        this.val$swipeDir = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mRecyclerView == null || !this.this$0.mRecyclerView.isAttachedToWindow() || this.val$anim.mOverridden || this.val$anim.mViewHolder.getAdapterPosition() == -1) {
            return;
        }
        RecyclerView$ItemAnimator itemAnimator = this.this$0.mRecyclerView.getItemAnimator();
        if ((itemAnimator == null || !itemAnimator.isRunning(null)) && !this.this$0.hasRunningRecoverAnim()) {
            this.this$0.mCallback.onSwiped(this.val$anim.mViewHolder, this.val$swipeDir);
        } else {
            this.this$0.mRecyclerView.post(this);
        }
    }
}
