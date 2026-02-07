package android.support.v4.text;

import android.support.annotation.NonNull;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes.dex */
class PrecomputedTextCompat$PrecomputedTextFutureTask extends FutureTask<PrecomputedTextCompat> {
    PrecomputedTextCompat$PrecomputedTextFutureTask(@NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params, @NonNull CharSequence charSequence) {
        super(new PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback(precomputedTextCompat$Params, charSequence));
    }
}
