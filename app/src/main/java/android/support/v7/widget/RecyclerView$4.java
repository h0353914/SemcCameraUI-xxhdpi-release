package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
class RecyclerView$4 implements ViewInfoStore$ProcessCallback {
    final /* synthetic */ RecyclerView this$0;

    RecyclerView$4(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    @Override // android.support.v7.widget.ViewInfoStore$ProcessCallback
    public void processDisappeared(RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        this.this$0.mRecycler.unscrapView(recyclerView$ViewHolder);
        this.this$0.animateDisappearance(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo, recyclerView$ItemAnimator$ItemHolderInfo2);
    }

    @Override // android.support.v7.widget.ViewInfoStore$ProcessCallback
    public void processAppeared(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        this.this$0.animateAppearance(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo, recyclerView$ItemAnimator$ItemHolderInfo2);
    }

    @Override // android.support.v7.widget.ViewInfoStore$ProcessCallback
    public void processPersistent(RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        recyclerView$ViewHolder.setIsRecyclable(false);
        if (this.this$0.mDataSetHasChangedAfterLayout) {
            if (this.this$0.mItemAnimator.animateChange(recyclerView$ViewHolder, recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo, recyclerView$ItemAnimator$ItemHolderInfo2)) {
                this.this$0.postAnimationRunner();
            }
        } else if (this.this$0.mItemAnimator.animatePersistence(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo, recyclerView$ItemAnimator$ItemHolderInfo2)) {
            this.this$0.postAnimationRunner();
        }
    }

    @Override // android.support.v7.widget.ViewInfoStore$ProcessCallback
    public void unused(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        this.this$0.mLayout.removeAndRecycleView(recyclerView$ViewHolder.itemView, this.this$0.mRecycler);
    }
}
