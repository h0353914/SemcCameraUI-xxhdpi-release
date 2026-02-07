package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class FastScroller$1 implements Runnable {
    final /* synthetic */ FastScroller this$0;

    FastScroller$1(FastScroller fastScroller) {
        this.this$0 = fastScroller;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.hide(500);
    }
}
