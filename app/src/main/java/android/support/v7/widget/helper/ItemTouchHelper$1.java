package android.support.v7.widget.helper;

import android.support.v4.view.ViewCompat;

class ItemTouchHelper$1 implements Runnable {
    final /* synthetic */ ItemTouchHelper this$0;

    ItemTouchHelper$1(ItemTouchHelper itemTouchHelper) {
        this.this$0 = itemTouchHelper;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mSelected == null || !this.this$0.scrollIfNecessary()) {
            return;
        }
        if (this.this$0.mSelected != null) {
            this.this$0.moveIfNecessary(this.this$0.mSelected);
        }
        this.this$0.mRecyclerView.removeCallbacks(this.this$0.mScrollRunnable);
        ViewCompat.postOnAnimation(this.this$0.mRecyclerView, this);
    }
}
