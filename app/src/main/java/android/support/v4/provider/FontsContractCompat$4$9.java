package android.support.v4.provider;

import android.graphics.Typeface;

class FontsContractCompat$4$9 implements Runnable {
    final /* synthetic */ FontsContractCompat$4 this$0;
    final /* synthetic */ Typeface val$typeface;

    FontsContractCompat$4$9(FontsContractCompat$4 fontsContractCompat$4, Typeface typeface) {
        this.this$0 = fontsContractCompat$4;
        this.val$typeface = typeface;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.val$callback.onTypefaceRetrieved(this.val$typeface);
    }
}
