package android.support.v4.app;

import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class BundleCompat {
    private BundleCompat() {
    }

    @Nullable
    public static IBinder getBinder(@NonNull Bundle bundle, @Nullable String str) {
        if (Build$VERSION.SDK_INT >= 18) {
            return bundle.getBinder(str);
        }
        return BundleCompat$BundleCompatBaseImpl.getBinder(bundle, str);
    }

    public static void putBinder(@NonNull Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        if (Build$VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            BundleCompat$BundleCompatBaseImpl.putBinder(bundle, str, iBinder);
        }
    }
}
