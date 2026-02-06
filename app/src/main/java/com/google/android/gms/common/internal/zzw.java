package com.google.android.gms.common.internal;

import java.util.Arrays;

public final class zzw {
    public static boolean equal(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static zzw$zza zzv(Object obj) {
        return new zzw$zza(obj, null);
    }
}
