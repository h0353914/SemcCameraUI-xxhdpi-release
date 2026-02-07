package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class FastScroller$2 extends RecyclerView$OnScrollListener {
    final /* synthetic */ FastScroller this$0;

    FastScroller$2(FastScroller fastScroller) {
        this.this$0 = fastScroller;
    }

    @Override // android.support.v7.widget.RecyclerView$OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        this.this$0.updateScrollPosition(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
    }
}
