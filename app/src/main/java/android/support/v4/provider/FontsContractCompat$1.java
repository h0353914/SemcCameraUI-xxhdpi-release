package android.support.v4.provider;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
class FontsContractCompat$1 implements Callable<FontsContractCompat$TypefaceResult> {
    final /* synthetic */ Context val$context;
    final /* synthetic */ String val$id;
    final /* synthetic */ FontRequest val$request;
    final /* synthetic */ int val$style;

    FontsContractCompat$1(Context context, FontRequest fontRequest, int i, String str) {
        this.val$context = context;
        this.val$request = fontRequest;
        this.val$style = i;
        this.val$id = str;
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ FontsContractCompat$TypefaceResult call() throws Exception {
        return call();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public FontsContractCompat$TypefaceResult call() throws Exception {
        FontsContractCompat$TypefaceResult fontInternal = FontsContractCompat.getFontInternal(this.val$context, this.val$request, this.val$style);
        if (fontInternal.mTypeface != null) {
            FontsContractCompat.sTypefaceCache.put(this.val$id, fontInternal.mTypeface);
        }
        return fontInternal;
    }
}
