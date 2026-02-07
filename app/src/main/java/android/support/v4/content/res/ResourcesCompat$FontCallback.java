package android.support.v4.content.res;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

/* JADX INFO: loaded from: classes.dex */
public abstract class ResourcesCompat$FontCallback {
    public abstract void onFontRetrievalFailed(int i);

    public abstract void onFontRetrieved(@NonNull Typeface typeface);

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final void callbackSuccessAsync(Typeface typeface, @Nullable Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new ResourcesCompat$FontCallback$1(this, typeface));
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final void callbackFailAsync(int i, @Nullable Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new ResourcesCompat$FontCallback$2(this, i));
    }
}
