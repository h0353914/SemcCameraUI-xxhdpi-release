package android.support.v4.provider;

/* JADX INFO: loaded from: classes.dex */
class FontsContractCompat$4$7 implements Runnable {
    final /* synthetic */ FontsContractCompat$4 this$0;
    final /* synthetic */ int val$resultCode;

    FontsContractCompat$4$7(FontsContractCompat$4 fontsContractCompat$4, int i) {
        this.this$0 = fontsContractCompat$4;
        this.val$resultCode = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.val$callback.onTypefaceRequestFailed(this.val$resultCode);
    }
}
