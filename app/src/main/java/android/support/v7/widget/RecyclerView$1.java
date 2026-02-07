package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class RecyclerView$1 implements Runnable {
    final /* synthetic */ RecyclerView this$0;

    RecyclerView$1(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.this$0.mFirstLayoutComplete || this.this$0.isLayoutRequested()) {
            return;
        }
        if (!this.this$0.mIsAttached) {
            this.this$0.requestLayout();
        } else if (this.this$0.mLayoutFrozen) {
            this.this$0.mLayoutWasDefered = true;
        } else {
            this.this$0.consumePendingUpdateOperations();
        }
    }
}
