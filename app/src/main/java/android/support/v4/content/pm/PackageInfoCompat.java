package android.support.v4.content.pm;

import android.content.pm.PackageInfo;
import android.os.Build$VERSION;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public final class PackageInfoCompat {
    public static long getLongVersionCode(@NonNull PackageInfo packageInfo) {
        if (Build$VERSION.SDK_INT >= 28) {
            return packageInfo.getLongVersionCode();
        }
        return packageInfo.versionCode;
    }

    private PackageInfoCompat() {
    }
}
