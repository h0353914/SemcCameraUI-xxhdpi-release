package android.support.v4.content.res;

import android.graphics.Typeface;

/* JADX INFO: loaded from: classes.dex */
class ResourcesCompat$FontCallback$1 implements Runnable {
    final /* synthetic */ ResourcesCompat$FontCallback this$0;
    final /* synthetic */ Typeface val$typeface;

    ResourcesCompat$FontCallback$1(ResourcesCompat$FontCallback resourcesCompat$FontCallback, Typeface typeface) {
        this.this$0 = resourcesCompat$FontCallback;
        this.val$typeface = typeface;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.onFontRetrieved(this.val$typeface);
    }
}
