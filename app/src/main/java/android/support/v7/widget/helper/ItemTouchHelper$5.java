package android.support.v7.widget.helper;

import android.support.v7.widget.RecyclerView$ChildDrawingOrderCallback;

/* JADX INFO: loaded from: classes.dex */
class ItemTouchHelper$5 implements RecyclerView$ChildDrawingOrderCallback {
    final /* synthetic */ ItemTouchHelper this$0;

    ItemTouchHelper$5(ItemTouchHelper itemTouchHelper) {
        this.this$0 = itemTouchHelper;
    }

    @Override // android.support.v7.widget.RecyclerView$ChildDrawingOrderCallback
    public int onGetChildDrawingOrder(int i, int i2) {
        if (this.this$0.mOverdrawChild == null) {
            return i2;
        }
        int iIndexOfChild = this.this$0.mOverdrawChildPosition;
        if (iIndexOfChild == -1) {
            iIndexOfChild = this.this$0.mRecyclerView.indexOfChild(this.this$0.mOverdrawChild);
            this.this$0.mOverdrawChildPosition = iIndexOfChild;
        }
        return i2 == i + (-1) ? iIndexOfChild : i2 < iIndexOfChild ? i2 : i2 + 1;
    }
}
