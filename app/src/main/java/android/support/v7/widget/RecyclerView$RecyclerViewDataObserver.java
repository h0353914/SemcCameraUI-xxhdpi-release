package android.support.v7.widget;

import android.support.v4.view.ViewCompat;

class RecyclerView$RecyclerViewDataObserver extends RecyclerView$AdapterDataObserver {
    final /* synthetic */ RecyclerView this$0;

    RecyclerView$RecyclerViewDataObserver(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onChanged() {
        this.this$0.assertNotInLayoutOrScroll(null);
        this.this$0.mState.mStructureChanged = true;
        this.this$0.processDataSetCompletelyChanged(true);
        if (this.this$0.mAdapterHelper.hasPendingUpdates()) {
            return;
        }
        this.this$0.requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeChanged(int i, int i2, Object obj) {
        this.this$0.assertNotInLayoutOrScroll(null);
        if (this.this$0.mAdapterHelper.onItemRangeChanged(i, i2, obj)) {
            triggerUpdateProcessor();
        }
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeInserted(int i, int i2) {
        this.this$0.assertNotInLayoutOrScroll(null);
        if (this.this$0.mAdapterHelper.onItemRangeInserted(i, i2)) {
            triggerUpdateProcessor();
        }
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeRemoved(int i, int i2) {
        this.this$0.assertNotInLayoutOrScroll(null);
        if (this.this$0.mAdapterHelper.onItemRangeRemoved(i, i2)) {
            triggerUpdateProcessor();
        }
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeMoved(int i, int i2, int i3) {
        this.this$0.assertNotInLayoutOrScroll(null);
        if (this.this$0.mAdapterHelper.onItemRangeMoved(i, i2, i3)) {
            triggerUpdateProcessor();
        }
    }

    void triggerUpdateProcessor() {
        if (RecyclerView.POST_UPDATES_ON_ANIMATION && this.this$0.mHasFixedSize && this.this$0.mIsAttached) {
            ViewCompat.postOnAnimation(this.this$0, this.this$0.mUpdateChildViewsRunnable);
        } else {
            this.this$0.mAdapterUpdateDuringMeasure = true;
            this.this$0.requestLayout();
        }
    }
}
