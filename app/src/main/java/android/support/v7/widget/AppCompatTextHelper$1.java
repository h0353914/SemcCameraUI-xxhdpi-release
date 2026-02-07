package android.support.v7.widget;

import android.graphics.Typeface;
import android.support.annotation.NonNull;
import android.support.v4.content.res.ResourcesCompat$FontCallback;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class AppCompatTextHelper$1 extends ResourcesCompat$FontCallback {
    final /* synthetic */ AppCompatTextHelper this$0;
    final /* synthetic */ WeakReference val$textViewWeak;

    @Override // android.support.v4.content.res.ResourcesCompat$FontCallback
    public void onFontRetrievalFailed(int i) {
    }

    AppCompatTextHelper$1(AppCompatTextHelper appCompatTextHelper, WeakReference weakReference) {
        this.this$0 = appCompatTextHelper;
        this.val$textViewWeak = weakReference;
    }

    @Override // android.support.v4.content.res.ResourcesCompat$FontCallback
    public void onFontRetrieved(@NonNull Typeface typeface) {
        this.this$0.onAsyncTypefaceReceived(this.val$textViewWeak, typeface);
    }
}
