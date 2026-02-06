package android.support.v4.provider;

class FontsContractCompat$4$4 implements Runnable {
    final /* synthetic */ FontsContractCompat$4 this$0;

    FontsContractCompat$4$4(FontsContractCompat$4 fontsContractCompat$4) {
        this.this$0 = fontsContractCompat$4;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.val$callback.onTypefaceRequestFailed(-3);
    }
}
