package android.support.v4.provider;

import android.os.Handler;
import android.support.v4.content.res.ResourcesCompat$FontCallback;

/* JADX INFO: loaded from: classes.dex */
class FontsContractCompat$2 implements SelfDestructiveThread$ReplyCallback<FontsContractCompat$TypefaceResult> {
    final /* synthetic */ ResourcesCompat$FontCallback val$fontCallback;
    final /* synthetic */ Handler val$handler;

    FontsContractCompat$2(ResourcesCompat$FontCallback resourcesCompat$FontCallback, Handler handler) {
        this.val$fontCallback = resourcesCompat$FontCallback;
        this.val$handler = handler;
    }

    @Override // android.support.v4.provider.SelfDestructiveThread$ReplyCallback
    public /* bridge */ /* synthetic */ void onReply(FontsContractCompat$TypefaceResult fontsContractCompat$TypefaceResult) {
        onReply2(fontsContractCompat$TypefaceResult);
    }

    /* JADX INFO: renamed from: onReply, reason: avoid collision after fix types in other method */
    public void onReply2(FontsContractCompat$TypefaceResult fontsContractCompat$TypefaceResult) {
        if (fontsContractCompat$TypefaceResult == null) {
            this.val$fontCallback.callbackFailAsync(1, this.val$handler);
        } else if (fontsContractCompat$TypefaceResult.mResult == 0) {
            this.val$fontCallback.callbackSuccessAsync(fontsContractCompat$TypefaceResult.mTypeface, this.val$handler);
        } else {
            this.val$fontCallback.callbackFailAsync(fontsContractCompat$TypefaceResult.mResult, this.val$handler);
        }
    }
}
