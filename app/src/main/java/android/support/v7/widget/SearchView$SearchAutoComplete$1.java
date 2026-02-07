package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class SearchView$SearchAutoComplete$1 implements Runnable {
    final /* synthetic */ SearchView$SearchAutoComplete this$0;

    SearchView$SearchAutoComplete$1(SearchView$SearchAutoComplete searchView$SearchAutoComplete) {
        this.this$0 = searchView$SearchAutoComplete;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.showSoftInputIfNecessary();
    }
}
