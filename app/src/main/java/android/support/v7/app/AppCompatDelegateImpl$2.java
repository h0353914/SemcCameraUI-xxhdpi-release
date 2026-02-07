package android.support.v7.app;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl$2 implements Runnable {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$2(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        if ((this.this$0.mInvalidatePanelMenuFeatures & 1) != 0) {
            this.this$0.doInvalidatePanelMenu(0);
        }
        if ((this.this$0.mInvalidatePanelMenuFeatures & 4096) != 0) {
            this.this$0.doInvalidatePanelMenu(108);
        }
        this.this$0.mInvalidatePanelMenuPosted = false;
        this.this$0.mInvalidatePanelMenuFeatures = 0;
    }
}
