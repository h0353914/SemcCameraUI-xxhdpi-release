package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import com.google.android.gms.common.internal.zzd;

/* loaded from: /home/h/tmp/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release/build/apk/classes.dex */
public class zzmm {
    public static boolean zzjA() {
        return zzd.zzaeK && zzlr.isInitialized() && zzlr.zzoo() == Process.myUid();
    }

    public static boolean zzl(Context context, String str) {
        try {
            return (context.getPackageManager().getApplicationInfo(str, 0).flags & 2097152) != 0;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
