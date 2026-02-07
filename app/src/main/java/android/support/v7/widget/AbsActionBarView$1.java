package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class AbsActionBarView$1 implements Runnable {
    final /* synthetic */ AbsActionBarView this$0;

    AbsActionBarView$1(AbsActionBarView absActionBarView) {
        this.this$0 = absActionBarView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.showOverflowMenu();
    }
}
