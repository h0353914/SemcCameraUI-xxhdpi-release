package android.support.v4.app;

/* JADX INFO: loaded from: classes.dex */
class ListFragment$1 implements Runnable {
    final /* synthetic */ ListFragment this$0;

    ListFragment$1(ListFragment listFragment) {
        this.this$0 = listFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mList.focusableViewAvailable(this.this$0.mList);
    }
}
