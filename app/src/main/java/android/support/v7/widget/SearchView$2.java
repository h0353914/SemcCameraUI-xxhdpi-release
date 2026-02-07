package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class SearchView$2 implements Runnable {
    final /* synthetic */ SearchView this$0;

    SearchView$2(SearchView searchView) {
        this.this$0 = searchView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mSuggestionsAdapter == null || !(this.this$0.mSuggestionsAdapter instanceof SuggestionsAdapter)) {
            return;
        }
        this.this$0.mSuggestionsAdapter.changeCursor(null);
    }
}
