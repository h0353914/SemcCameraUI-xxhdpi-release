package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class StaggeredGridLayoutManager$1 implements Runnable {
    final /* synthetic */ StaggeredGridLayoutManager this$0;

    StaggeredGridLayoutManager$1(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.this$0 = staggeredGridLayoutManager;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.checkForGaps();
    }
}
