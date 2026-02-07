package android.support.v4.app;

/* JADX INFO: loaded from: classes.dex */
class Fragment$1 implements Runnable {
    final /* synthetic */ Fragment this$0;

    Fragment$1(Fragment fragment) {
        this.this$0 = fragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.callStartTransitionListener();
    }
}
