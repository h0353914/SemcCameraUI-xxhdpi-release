package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class RecyclerView$2 implements Runnable {
    final /* synthetic */ RecyclerView this$0;

    RecyclerView$2(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mItemAnimator != null) {
            this.this$0.mItemAnimator.runPendingAnimations();
        }
        this.this$0.mPostedAnimatorRunner = false;
    }
}
