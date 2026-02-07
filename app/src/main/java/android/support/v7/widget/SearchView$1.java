package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class SearchView$1 implements Runnable {
    final /* synthetic */ SearchView this$0;

    SearchView$1(SearchView searchView) {
        this.this$0 = searchView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.updateFocusedState();
    }
}
