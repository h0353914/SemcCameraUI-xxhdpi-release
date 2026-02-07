package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class RecyclerView$6 implements AdapterHelper$Callback {
    final /* synthetic */ RecyclerView this$0;

    RecyclerView$6(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    @Override // android.support.v7.widget.AdapterHelper$Callback
    public RecyclerView$ViewHolder findViewHolder(int i) {
        RecyclerView$ViewHolder recyclerView$ViewHolderFindViewHolderForPosition = this.this$0.findViewHolderForPosition(i, true);
        if (recyclerView$ViewHolderFindViewHolderForPosition == null || this.this$0.mChildHelper.isHidden(recyclerView$ViewHolderFindViewHolderForPosition.itemView)) {
            return null;
        }
        return recyclerView$ViewHolderFindViewHolderForPosition;
    }

    @Override // android.support.v7.widget.AdapterHelper$Callback
    public void offsetPositionsForRemovingInvisible(int i, int i2) {
        this.this$0.offsetPositionRecordsForRemove(i, i2, true);
        this.this$0.mItemsAddedOrRemoved = true;
        this.this$0.mState.mDeletedInvisibleItemCountSincePreviousLayout += i2;
    }

    @Override // android.support.v7.widget.AdapterHelper$Callback
    public void offsetPositionsForRemovingLaidOutOrNewView(int i, int i2) {
        this.this$0.offsetPositionRecordsForRemove(i, i2, false);
        this.this$0.mItemsAddedOrRemoved = true;
    }

    @Override // android.support.v7.widget.AdapterHelper$Callback
    public void markViewHoldersUpdated(int i, int i2, Object obj) {
        this.this$0.viewRangeUpdate(i, i2, obj);
        this.this$0.mItemsChanged = true;
    }

    @Override // android.support.v7.widget.AdapterHelper$Callback
    public void onDispatchFirstPass(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        dispatchUpdate(adapterHelper$UpdateOp);
    }

    void dispatchUpdate(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        int i = adapterHelper$UpdateOp.cmd;
        if (i == 4) {
            this.this$0.mLayout.onItemsUpdated(this.this$0, adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
            return;
        }
        if (i != 8) {
            switch (i) {
                case 1:
                    this.this$0.mLayout.onItemsAdded(this.this$0, adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
                    break;
                case 2:
                    this.this$0.mLayout.onItemsRemoved(this.this$0, adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
                    break;
            }
            return;
        }
        this.this$0.mLayout.onItemsMoved(this.this$0, adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, 1);
    }

    @Override // android.support.v7.widget.AdapterHelper$Callback
    public void onDispatchSecondPass(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        dispatchUpdate(adapterHelper$UpdateOp);
    }

    @Override // android.support.v7.widget.AdapterHelper$Callback
    public void offsetPositionsForAdd(int i, int i2) {
        this.this$0.offsetPositionRecordsForInsert(i, i2);
        this.this$0.mItemsAddedOrRemoved = true;
    }

    @Override // android.support.v7.widget.AdapterHelper$Callback
    public void offsetPositionsForMove(int i, int i2) {
        this.this$0.offsetPositionRecordsForMove(i, i2);
        this.this$0.mItemsAddedOrRemoved = true;
    }
}
